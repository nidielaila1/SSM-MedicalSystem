package com.Medical.service.userService.Impl;

import com.Medical.domain.Department;
import com.Medical.mapper.DepartmentMapper;
import com.Medical.service.userService.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("deptService")
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public List<Department> findAllDept() {
        return departmentMapper.findAllDept();
    }
}
