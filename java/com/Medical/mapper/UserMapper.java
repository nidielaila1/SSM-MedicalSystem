package com.Medical.mapper;

import com.Medical.domain.*;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {

    @Select("select * from users where username = #{username} and password = #{password}")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "phone", property = "phone"),
            @Result(column = "password", property = "password")
    })
    Users findUserByNameAndPassword(@Param("username") String username, @Param("password") String password);

    @Insert("insert into users values(#{id},#{username},#{phone},#{gender},#{password})")
    void register(Users user);

    @Insert("insert into patients values(#{id},#{pname},#{gender},#{con},#{uid})")
    void addPatient(Patients patient);

    @Select("select * from patients where uid = #{uid}")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "con", property = "con"),
            @Result(column = "uid", property = "uid")
    })
    List<Patients> findAllPatients(String uid);


    @Select("select id,pname,gender,con from patients where id = #{id}")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "con", property = "con")
    })
    Patients choseOnePatient(String id);

    @Update("update patients set pname=#{pname},gender=#{gender},con=#{con} where id = #{id}")
    void updatePatient(Patients patients);

    @Update("delete from patients where id =#{id}")
    void deletePatient(@Param("id") String id);

    @Select("SELECT * " +
            "FROM admission " +
            "WHERE pid IN (SELECT pid FROM patients p,users u WHERE u.`id` = p.`uid`) AND state = '同意'" +
            "order by applytime DESC, id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "pid", property = "pid"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "reason", property = "reason"),
            @Result(column = "state", property = "state"),
            @Result(column = "applyTime", property = "applyTime")
    })
//    用户点击查找所有住院证明，弹出跟当前用户相关的所有住院证明信息
    public List<Admission> queryHosCertification(String id);

    @Select("SELECT h.`id`,adm_id,room,bed,h.`state`,admissionDate " +
            "FROM hospitalStay h,admission a " +
            "WHERE h.`adm_id` = a.`id` AND a.`pid` IN (SELECT pid FROM users u,patients p WHERE u.`id` =p.`uid`) ")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "adm_id", property = "adm_id"),
            @Result(column = "room", property = "room"),
            @Result(column = "bed", property = "bed"),
            @Result(column = "state", property = "state"),
            @Result(column = "admissionDate", property = "admissionDate"),
    })
//    用户只能查出来所有自己的就诊人的正在住院的信息，出院查不到
    public List<HospitalStay> queryHospitalStay(String id);

    @Select("SELECT o.`id` id,p.`id` pid,p.`pname` pname,o.`or_id` or_id,o.`operationTime` operationTime FROM operation o,operationrequest opr,admission a,hospitalstay h,patients p,users u WHERE o.`or_id` = opr.`id` AND opr.`hosStay_id` = h.`id` AND h.`adm_id` = a.`id` AND a.`pid` IN (SELECT patients.`id` FROM patients,users WHERE patients.`uid` = #{id})")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "pid", property = "pid"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "or_id", property = "or_id"),
            @Result(column = "operationTime", property = "operationTime")
    })
    public List<OperationInfo> queryOperationInfo(@Param("id") String id);
}
