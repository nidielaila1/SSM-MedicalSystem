package com.Medical.service.managerService;

import com.Medical.domain.*;

import java.util.List;

public interface ManagerService {
    public Admin login(String account, String password);

    public List<Apply> findAllAppliesWaitingHandle();

    public void handleApply(Apply apply);

    public void setWorkDayState(WorkDay workDay);

    public void addWorkDay(WorkDay workDay);

    public List<Admission> findAdmissionsWaitingHandle();

    public void handleAdmission(Admission admission);

    public void insertRoom(Room room);

    public void updateRoom(Room room);

    public void updateRoom1(String state, String room);

    public void updateRoom2(int id);

    public void banRoomBed(String room);

    public Room choseOneRoom(String room);

    public List<Room> findAllRoom();

    public List<Room> findAllEmptyRoomBed();

    public void insertHospitalStay(HospitalStay hospitalStay);

    public List<HosApply> findHosApplyWaitingHandle();

    public void handleHosApply(int id);

    public void leaveHospital(String dischargeTime, int id);

    public List<OperationRequest> findOperationRequestWaitingHandle();

    public void handleOperationRequest(int id);

    public void insertOperationInfo(Operation operation);
}
