package com.Medical.service.userService.Impl;

import com.Medical.domain.WorkDay;
import com.Medical.mapper.WorkDayMapper;
import com.Medical.service.userService.WorkDayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("workDayService")
public class WorkDayServiceImpl implements WorkDayService {

    @Autowired
    private WorkDayMapper workDayMapper;

    @Override
    public void insert(WorkDay workDay) {
        workDayMapper.insert(workDay);
    }

    @Override
    public List<WorkDay> findAll() {
        return workDayMapper.findAll();
    }

    @Override
    public List<WorkDay> queryWorkDayByDocId(int doc_id) {
        return workDayMapper.queryWorkDayByDocId(doc_id);
    }

    @Override
    public void updateNsNum(int nsnum, int id) {
        workDayMapper.updateNsNum(nsnum, id);
    }

    @Override
    public WorkDay queryWorkDayById(int id) {
        return workDayMapper.queryWorkDayById(id);
    }
}
