package com.Medical.service.userService;


import com.Medical.domain.*;

import java.util.List;

public interface UserService {
    Users login(String username, String password);

    void register(Users user);

    void addPatient(Patients patient);

    List<Patients> findAllPatient(String uid);

    Patients choseOnePatient(String id);

    void updatePatient(Patients patients);

    void deletePatient(String id);

    List<Admission> queryHosCertification(String id);

    List<HospitalStay> queryHospitalStay(String id);

    List<OperationInfo> queryOperationInfo(String id);
}
