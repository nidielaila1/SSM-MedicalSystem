package com.Medical.mapper;

import com.Medical.domain.Department;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepartmentMapper {
    @Select("select * from department")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "doctor_num", property = "doctor_num"),
            @Result(column = "dept_about", property = "dept_about"),
            @Result(column = "dept_diagnosis_scope", property = "dept_diagnosis_scope")
    })
    public List<Department> findAllDept();
}
