package com.Medical.mapper;

import com.Medical.domain.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ManagerMapper {

    @Select("select * from admin where account = #{account} and password = #{password}")
    @Results({
            @Result(column = "account", property = "account"),
            @Result(column = "password", property = "password"),
            @Result(column = "admin_name", property = "admin_name")
    })
    public Admin findAdminByAccountAndPassword(@Param("account") String account, @Param("password") String password);

    @Select("select * from apply where state = '等待处理' order by applyTime DESC, id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "doc_name", property = "doc_name"),
            @Result(column = "wid", property = "wid"),
            @Result(column = "reason", property = "reason"),
            @Result(column = "applyTime", property = "applyTime"),
            @Result(column = "request", property = "request"),
            @Result(column = "state", property = "state")
    })
    public List<Apply> findAllAppliesWaitingHandle();

    @Update("update apply set state = #{state}, applyTime = #{applyTime} where id = #{id}")
    public void handleApply(Apply apply);

    @Update("update workday set state = '停诊' where id = #{id}")
    public void setWorkDayState(WorkDay workDay);

    @Select("select * from admission where state = '等待处理' order by applyTime DESC, id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "pid", property = "doc_id"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "applyTime", property = "applyTime"),
            @Result(column = "request", property = "request"),
            @Result(column = "reason", property = "reason"),
            @Result(column = "state", property = "state")
    })
    public List<Admission> findAdmissionsWaitingHandle();

    @Update("update admission set state = #{state} where id =#{id}")
    public void handleAdmission(Admission admission);

    @Insert("insert into hospitalStay values(#{id},#{adm_id},#{room},#{bed},#{state},#{admissionDate},#{dischargeTime}) ")
    public void insertHospitalStayInfo(HospitalStay hospitalStay);

    @Select("select * from hosApply where state = '等待处理' order by applyTime DESC, id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "pid", property = "doc_id"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "applyTime", property = "applyTime"),
            @Result(column = "request", property = "request"),
            @Result(column = "reason", property = "reason"),
            @Result(column = "state", property = "state")
    })
    public List<HosApply> findHosApplyWaitingHandle();

    @Update("update hosApply set state = '同意' where id =#{id}")
    public void handleHosApply(@Param("id") int id);

    @Update("UPDATE hospitalStay s SET dischargeTime = #{dischargeTime} , state ='出院' WHERE s.`id` = (SELECT hosStay_id FROM hosApply WHERE id = #{id}) ")
    public void leaveHospital(@Param("dischargeTime") String dischargeTime, @Param("id") int id);

    @Select("select * from operationRequest where state = '等待处理' order by applyTime DESC, id desc ")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "hosStay_id", property = "hosStay_id"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "operationTime", property = "operationTime"),
            @Result(column = "applyTime", property = "applyTime"),
            @Result(column = "state", property = "state")
    })
    public List<OperationRequest> findOperationRequestWaitingHandle();

    @Update("update operationRequest set state = '同意' where id =#{id}")
    public void handleOperationRequest(@Param("id") int id);

    @Insert("insert into operation values(#{id},#{or_id},#{operationTime})")
    public void insertOperationInfo(Operation operation);
}
