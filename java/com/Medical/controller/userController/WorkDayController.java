package com.Medical.controller.userController;

import com.Medical.domain.Doctors;
import com.Medical.domain.WorkDay;
import com.Medical.service.userService.Impl.DoctorServiceImpl;
import com.Medical.service.userService.Impl.WorkDayServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller("workDayController")
@RequestMapping("/workDayMethod")
public class WorkDayController {

    @Autowired
    private WorkDayServiceImpl workDayService;

    @Autowired
    private DoctorServiceImpl doctorService;

    @Autowired
    private HttpServletRequest request;

    @RequestMapping("/addWorkDayInfo")
    @ResponseBody
    public ModelAndView addWorkDayInfo(WorkDay workDay) {

        workDayService.insert(workDay);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userWorkdayList");
        return modelAndView;
    }

    @RequestMapping("/findAllWorkDayInfo")
    public ModelAndView findAllWorkDayInfo() {

        List<WorkDay> workDays = workDayService.findAll();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("workDays", workDays);
        modelAndView.setViewName("userWorkdayList");
        return modelAndView;
    }

    @RequestMapping("/queryWorkDayByDocId")
    @ResponseBody
    public ModelAndView queryWorkDayByDocId(int doc_id) {
//        在医生列表中选择医生，选择完成后，自动将对应医生id传入
        List<WorkDay> workDays = workDayService.queryWorkDayByDocId(doc_id);
        Doctors doctor = doctorService.findDocByDocId(doc_id);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("workDays", workDays);
        modelAndView.addObject("docName", doctor.getDoc_name());
        modelAndView.addObject("doc_id", doc_id);
        modelAndView.setViewName("userWorkdayList");
        return modelAndView;
    }


    @RequestMapping("/queryWorkDayByDocId1")
    @ResponseBody
    public ModelAndView queryWorkDayByDocId1(int doc_id) {
//        在医生列表中选择医生，选择完成后，自动将对应医生id传入
        List<WorkDay> workDays = workDayService.queryWorkDayByDocId(doc_id);
        Doctors doctor = doctorService.findDocByDocId(doc_id);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("workDays", workDays);
        modelAndView.addObject("docName", doctor.getDoc_name());
        modelAndView.addObject("doc_id", doc_id);
        modelAndView.setViewName("userWorkdayList1");
        return modelAndView;
    }
}
