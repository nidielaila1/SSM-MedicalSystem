package com.Medical.service.userService.Impl;

import com.Medical.domain.*;
import com.Medical.mapper.UserMapper;
import com.Medical.service.userService.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public Users login(String username, String password) {
        return userMapper.findUserByNameAndPassword(username, password);
    }

    @Override
    public void register(Users user) {
        userMapper.register(user);
    }

    @Override
    public void addPatient(Patients patient) {
        userMapper.addPatient(patient);
    }

    @Override
    public List<Patients> findAllPatient(String uid) {
        return userMapper.findAllPatients(uid);
    }

    @Override
    public Patients choseOnePatient(String id) {
        return userMapper.choseOnePatient(id);
    }

    @Override
    public void updatePatient(Patients patients) {
        userMapper.updatePatient(patients);
    }

    @Override
    public void deletePatient(String id) {
        userMapper.deletePatient(id);
    }

    @Override
    public List<Admission> queryHosCertification(String id) {
        return userMapper.queryHosCertification(id);
    }

    @Override
    public List<HospitalStay> queryHospitalStay(String id) {
        return userMapper.queryHospitalStay(id);
    }

    @Override
    public List<OperationInfo> queryOperationInfo(String id) {
        return userMapper.queryOperationInfo(id);
    }

}
