package com.Medical.service.doctorService.Impl;

import com.Medical.domain.*;
import com.Medical.mapper.DocMapper;
import com.Medical.service.doctorService.DocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("docService")
public class DocServiceImpl implements DocService {

    @Autowired
    private DocMapper docMapper;

    @Override
    public Doctors findDocByAccountAndPassword(String account, String password) {
        return docMapper.findDocByAccountAndPassword(account, password);
    }

    @Override
    public List<Orders> findOrderByDocId(int id) {
        return docMapper.findOrdersByDocId(id);
    }

    @Override
    public void completeOrder(int doc_id) {
        docMapper.completeOrder(doc_id);
    }

    @Override
    public void insertApply(Apply apply) {
        docMapper.insertApply(apply);
    }

    @Override
    public List<Apply> queryAppliesByDocId(int doc_id) {
        return docMapper.findAppliesByDocId(doc_id);
    }

    @Override
    public void insertAdmission(Admission admission) {
        docMapper.insertAdmission(admission);
    }

    @Override
    public List<Admission> queryAdmissionsByDocId(int doc_id) {
        return docMapper.findAdmissionsByDocId(doc_id);
    }

    @Override
    public void insertHosApply(HosApply hosApply) {
        docMapper.insertHosApply(hosApply);
    }

    @Override
    public List<HosApply> findHosApplyByDocId(int doc_id) {
        return docMapper.findHosApplyByDocId(doc_id);
    }

    @Override
    public List<HospitalStay> queryHosStayInfo(int id) {
        return docMapper.queryHosStayInfo(id);
    }

    @Override
    public void insertOperationRequest(OperationRequest operationRequest) {
        docMapper.insertOperationRequest(operationRequest);
    }

    @Override
    public List<OperationRequest> queryOperationRequestsByDocId(int doc_id) {
        return docMapper.findOperationRequestByDocId(doc_id);
    }


}
