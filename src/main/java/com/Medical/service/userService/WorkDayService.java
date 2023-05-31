package com.Medical.service.userService;

import com.Medical.domain.WorkDay;

import java.util.List;

public interface WorkDayService {
    public void insert(WorkDay workDay);

    public List<WorkDay> findAll();

    public List<WorkDay> queryWorkDayByDocId(int doc_id);

    public void updateNsNum(int nsnum, int id);

    public WorkDay queryWorkDayById(int id);
}
