package com.Medical.service.doctorService;

import com.Medical.domain.*;

import java.util.List;

public interface DocService {
    public Doctors findDocByAccountAndPassword(String account, String password);

    public List<Orders> findOrderByDocId(int doc_id);

    public void completeOrder(int id);

    public void insertApply(Apply apply);

    public List<Apply> queryAppliesByDocId(int doc_id);

    public void insertAdmission(Admission admission);

    public List<Admission> queryAdmissionsByDocId(int doc_id);

    public void insertHosApply(HosApply hosApply);

    public List<HosApply> findHosApplyByDocId(int doc_id);

    public List<HospitalStay> queryHosStayInfo(int id);

    public void insertOperationRequest(OperationRequest operationRequest);

    public List<OperationRequest> queryOperationRequestsByDocId(int doc_id);
}

