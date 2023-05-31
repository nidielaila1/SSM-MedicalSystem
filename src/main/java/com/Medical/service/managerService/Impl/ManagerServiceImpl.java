package com.Medical.service.managerService.Impl;

import com.Medical.domain.*;
import com.Medical.mapper.ManagerMapper;
import com.Medical.service.managerService.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("managerService")
public class ManagerServiceImpl implements ManagerService {
    @Autowired
    private ManagerMapper managerMapper;

    public Admin login(String account, String password) {
        return managerMapper.findAdminByAccountAndPassword(account, password);
    }

    @Override
    public List<Apply> findAllAppliesWaitingHandle() {
        return managerMapper.findAllAppliesWaitingHandle();
    }

    @Override
    public void handleApply(Apply apply) {
        managerMapper.handleApply(apply);
    }

    @Override
    public void setWorkDayState(WorkDay workDay) {
        managerMapper.setWorkDayState(workDay);
    }

    @Override
    public List<Admission> findAdmissionsWaitingHandle() {
        return managerMapper.findAdmissionsWaitingHandle();
    }

    @Override
    public void handleAdmission(Admission admission) {
        managerMapper.handleAdmission(admission);
    }

    @Override
    public void insertHospitalStay(HospitalStay hospitalStay) {
        managerMapper.insertHospitalStayInfo(hospitalStay);
    }

    @Override
    public List<HosApply> findHosApplyWaitingHandle() {
        return managerMapper.findHosApplyWaitingHandle();
    }

    @Override
    public void handleHosApply(int id) {
        managerMapper.handleHosApply(id);
    }

    @Override
    public void leaveHospital(String dischargeTime, int id) {
        managerMapper.leaveHospital(dischargeTime, id);
    }


    @Override
    public List<OperationRequest> findOperationRequestWaitingHandle() {
        return managerMapper.findOperationRequestWaitingHandle();
    }

    @Override
    public void handleOperationRequest(int id) {
        managerMapper.handleOperationRequest(id);
    }

    @Override
    public void insertOperationInfo(Operation operation) {
        managerMapper.insertOperationInfo(operation);
    }
}
