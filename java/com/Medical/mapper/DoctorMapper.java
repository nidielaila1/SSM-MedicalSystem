package com.Medical.mapper;

import com.Medical.domain.Doctors;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DoctorMapper {
    @Select("select id,doc_name,doctor_gender,doctor_title,doctor_career,doctor_about " +
            "from doctors " +
            "where dept_name= #{dept_name}")
//    通过科室名称找到当前科室所有医生信息
    public List<Doctors> findDocByDeptName(@Param("dept_name") String dept_name);

    @Select("select * from doctors where id = #{id}")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "doc_name", property = "doc_name"),
            @Result(column = "doctor_gender", property = "doctor_gender"),
            @Result(column = "doctor_title", property = "doctor_title"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doctor_career", property = "doctor_career"),
            @Result(column = "doctor_about", property = "doctor_about"),
            @Result(column = "deptid", property = "deptid"),
            @Result(column = "doctor_account", property = "doctor_account"),
            @Result(column = "password", property = "password")
    })
//    通过医生的id找到医生的信息
    public Doctors findDocById(int id);


    @Select("select id,doc_name,doctor_gender,doctor_title,doctor_career,doctor_about from doctors")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "doc_name", property = "doc_name"),
            @Result(column = "doctor_gender", property = "doctor_gender"),
            @Result(column = "doctor_title", property = "doctor_title"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doctor_career", property = "doctor_career")
    })
    public List<Doctors> findAllDoctors();

}
