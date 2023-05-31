package com.Medical.mapper;

import com.Medical.domain.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DocMapper {
    @Select("select * from doctors where account = #{account} and password = #{password}")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "account", property = "account"),
            @Result(column = "password", property = "password"),
            @Result(column = "doc_name", property = "doc_name"),
            @Result(column = "doctor_gender", property = "doctor_gender"),
            @Result(column = "doctor_title", property = "doctor_title"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doctor_career", property = "doctor_career"),
            @Result(column = "doctor_about", property = "doctor_about"),
            @Result(column = "deptid", property = "deptid")
    })
    Doctors findDocByAccountAndPassword(@Param("account") String account, @Param("password") String password);

    @Select("select * from orders where doc_id = #{doc_id} and state in ('预约成功','完成') order by state, dateTime DESC, id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "wid", property = "wid"),
            @Result(column = "uid", property = "uid"),
            @Result(column = "pid", property = "pid"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "doc_name", property = "doc_name"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "visitDate", property = "visitDate"),
            @Result(column = "visitNoon", property = "visitNoon"),
            @Result(column = "dateTime", property = "dateTime"),
            @Result(column = "state", property = "state")
    })
    List<Orders> findOrdersByDocId(@Param("doc_id") int doc_id);

    @Update("update orders set state = '完成' where id = #{id}")
    void completeOrder(int id);

    //    医生发送调休申请，然后给到管理员进行审批
    @Insert("insert into apply values(#{id},#{doc_id},#{doc_name},#{wid},#{reason},#{applyTime},#{request},#{state})")
    void insertApply(Apply apply);

    @Select("select * from apply where doc_id = #{doc_id} order by applyTime DESC, id desc")
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
    List<Apply> findAppliesByDocId(int doc_id);

    @Insert("insert into admission values(#{id},#{pid},#{pname},#{dept_name},#{doc_id},#{reason},#{state},#{applyTime})")
        //提交住院申请
    void insertAdmission(Admission admission);

    @Select("select * from admission where doc_id = #{doc_id} order by applytime DESC, id desc ")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "pid", property = "pid"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "applyTime", property = "applyTime"),
            @Result(column = "request", property = "request"),
            @Result(column = "reason", property = "reason"),
            @Result(column = "state", property = "state")
    })
    List<Admission> findAdmissionsByDocId(int doc_id);

    @Insert("insert into hosApply values(#{id},#{doc_id},#{hosStay_id},#{state},#{applyTime},#{dischargeTime})")
//    医生给病人提交出院申请
    void insertHosApply(HosApply hosApply);

    @Select("select * from hosapply where doc_id = #{doc_id} order by applyTime DESC,id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "hosStay_id", property = "hosStay_id"),
            @Result(column = "state", property = "state"),
            @Result(column = "applyTime", property = "applyTime"),
            @Result(column = "dischargeTime", property = "dischargeTime")
    })
    List<HosApply> findHosApplyByDocId(@Param("doc_id") int doc_id);

    @Select("SELECT * FROM hospitalstay WHERE state = '住院' AND adm_id = (SELECT id FROM admission WHERE doc_id = #{id})")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "adm_id", property = "adm_id"),
            @Result(column = "room", property = "room"),
            @Result(column = "bed", property = "bed"),
            @Result(column = "state", property = "state"),
            @Result(column = "admissionDate", property = "admissionDate"),
            @Result(column = "dischargeTime", property = "dischargeTime")
    })
//    查出所有属于当前登录的医生的患者的住院信息
    List<HospitalStay> queryHosStayInfo(@Param("id") int id);

    @Insert("insert into operationRequest values(#{id},#{hosStay_id},#{doc_id},#{operationTime},#{applyTime},#{state})")
        //提交住院申请
    void insertOperationRequest(OperationRequest operationRequest);

    @Select("select * from operationRequest where doc_id = #{doc_id} order by applytime DESC, id desc ")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "hosStay_id", property = "hosStay_id"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "operationTime", property = "operationTime"),
            @Result(column = "applyTime", property = "applyTime"),
            @Result(column = "state", property = "state")
    })
//    根据当前登录的医生的id查询出提交的所有的手术请求
    List<OperationRequest> findOperationRequestByDocId(int doc_id);

}
