package com.Medical.service.userService;


import com.Medical.domain.Doctors;

import java.util.List;

public interface DoctorService {
    public List<Doctors> findDocByDeptName(String dept_name);

    public Doctors findDocByDocId(int id);

    public List<Doctors> findAllDoc();
}
