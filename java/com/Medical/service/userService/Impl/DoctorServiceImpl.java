package com.Medical.service.userService.Impl;

import com.Medical.domain.Doctors;
import com.Medical.mapper.DoctorMapper;
import com.Medical.service.userService.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("doctorService")
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private DoctorMapper doctorMapper;

    @Override
    public List<Doctors> findDocByDeptName(String dept_name) {

        List<Doctors> doctors = doctorMapper.findDocByDeptName(dept_name);
        return doctors;
    }

    @Override
    public Doctors findDocByDocId(int id) {
        return doctorMapper.findDocById(id);
    }

    @Override
    public List<Doctors> findAllDoc() {
        List<Doctors> doctors = doctorMapper.findAllDoctors();
        return doctors;
    }
}
