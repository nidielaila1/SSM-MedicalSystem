package com.Medical.controller.managerController;

import com.Medical.domain.*;
import com.Medical.service.managerService.Impl.ManagerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller("managerController")
@RequestMapping("/managerMethod")
public class ManagerController {

    @Autowired
    private ManagerServiceImpl managerService;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private HttpServletResponse response;

    @RequestMapping("/adminLogin")
    @ResponseBody
    public ModelAndView login(@RequestParam("account") String account, @RequestParam("password") String password) {
        Admin admin = managerService.login(account, password);

        ModelAndView modelAndView = new ModelAndView();
        if (admin == null) {
            modelAndView.addObject("error", "用户名和密码错误");
            modelAndView.setViewName("adminLogin");
        } else {
//            将用户信息保存到session中
            request.getSession().setAttribute("admin", admin);
            modelAndView.setViewName("adminIndex");
        }
        return modelAndView;
    }

    //    实现用户注销
    @RequestMapping(value = "/logout")
    public ModelAndView logout() {
        request.getSession().removeAttribute("admin");

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("adminLogin");
        return modelAndView;
    }
//    ----------------------------------------------------------------------------------

    @RequestMapping("/findAllAppliesWaitingHandle")
    public ModelAndView findAllAppliesWaitingHandle() {
        List<Apply> applies = managerService.findAllAppliesWaitingHandle();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("applies", applies);
        modelAndView.setViewName("adminApplyList");
        return modelAndView;
    }

    @RequestMapping("/handleApply")
    public ModelAndView handleApply(@RequestParam("id") int id, @RequestParam("docId") int doc_id, @RequestParam("wid") int wid, @RequestParam("request") String request, @RequestParam("state") String state) {
        String applyTime = this.request.getParameter("time");

        if (state.equals("同意")) {
            WorkDay workDay = new WorkDay();
            workDay.setWorkTime(applyTime);
            if (request.equals("申请停诊")) {
                workDay.setId(wid);
                managerService.setWorkDayState(workDay);
            } else {
                workDay.setAmpm("上午");
                workDay.setDoc_id(doc_id);
                workDay.setWorkTime(applyTime);
                managerService.addWorkDay(workDay);
            }
        }
        Apply apply = new Apply();
        apply.setState(state);
        apply.setId(id);
        managerService.handleApply(apply);

        List<Apply> applies = managerService.findAllAppliesWaitingHandle();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("applies", applies);
        modelAndView.setViewName("adminApplyList");
        return modelAndView;
    }

//    ----------------------------------------------

    @RequestMapping("/findAdmissionsWaitingHandle")
    public ModelAndView findAdmissionsWaitingHandle() {
        List<Admission> admissions = managerService.findAdmissionsWaitingHandle();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("admissions", admissions);
        modelAndView.setViewName("adminAdmissionList");
        return modelAndView;
    }

    @RequestMapping("/handleAdmission")
//    处理完成后直接跳转到 添加住院信息界面
    public ModelAndView handleAdmission() {
        String state = request.getParameter("state");
        int id = Integer.parseInt(request.getParameter("id"));
        Admission admission = new Admission();
        admission.setId(id);
        admission.setState(state);

        managerService.handleAdmission(admission);
        List<Room> rooms = managerService.findAllEmptyRoomBed();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("adm_id", id);
        modelAndView.addObject("rooms", rooms);
        modelAndView.setViewName("adminRoomList1");
        return modelAndView;
    }

    @RequestMapping(value = "/choseOneRoom")
    public ModelAndView choseOneRoom(@RequestParam("room") String room) {
        Room room1 = managerService.choseOneRoom(room);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("room1", room1);
        modelAndView.setViewName("adminUpdateRoom");
        return modelAndView;
    }

    @RequestMapping("/findAllRoom")
    public ModelAndView findAllRoom() {
        List<Room> rooms = managerService.findAllRoom();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("rooms", rooms);
        modelAndView.setViewName("adminRoomList");
        return modelAndView;
    }

    @RequestMapping("/addRoom")
    @ResponseBody
    public ModelAndView insertRoom(Room room) {
        managerService.insertRoom(room);

        List<Room> rooms = managerService.findAllRoom();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("rooms", rooms);
        modelAndView.setViewName("adminRoomList");
        return modelAndView;
    }

    @RequestMapping("/updateRoom")
    @ResponseBody
    public ModelAndView updateRoom(Room room) {
        managerService.updateRoom(room);

        List<Room> rooms = managerService.findAllRoom();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("rooms", rooms);
        modelAndView.setViewName("adminRoomList");
        return modelAndView;
    }

    @RequestMapping("/banRoomBed")
    @ResponseBody
    public ModelAndView banRoomBed(@RequestParam("room") String room) {
        managerService.banRoomBed(room);

        List<Room> rooms = managerService.findAllRoom();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("rooms", rooms);
        modelAndView.setViewName("adminRoomList");
        return modelAndView;
    }

    @RequestMapping("/addHospitalStayInfo")
    @ResponseBody
    public ModelAndView addHospitalStayInfo(HospitalStay hospitalStay) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        hospitalStay.setAdmissionDate(simpleDateFormat.format(new Date()));
        hospitalStay.setState("住院");

        managerService.insertHospitalStay(hospitalStay);
        managerService.updateRoom1("占用", hospitalStay.getRoom());

        List<Admission> admissions = managerService.findAdmissionsWaitingHandle();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("admissions", admissions);
        modelAndView.setViewName("adminAdmissionList");
        return modelAndView;
    }

//    ----------------------------------------------------------------------


    @RequestMapping("/findHosApplyWaitingHandle")
    public ModelAndView findHosApplyWaitingHandle() {
        List<HosApply> hosApplys = managerService.findHosApplyWaitingHandle();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hosApplys", hosApplys);
        modelAndView.setViewName("adminHosApplyList");
        return modelAndView;
    }

    @RequestMapping("/handleHosApply")
    public ModelAndView handleHosApply(@RequestParam("id") int id, @RequestParam("dischargeTime") String dischargeTime) {
        managerService.handleHosApply(id);
        managerService.leaveHospital(dischargeTime, id);
        managerService.updateRoom2(id);
        List<HosApply> hosApplys = managerService.findHosApplyWaitingHandle();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hosApplys", hosApplys);
        modelAndView.setViewName("adminHosApplyList");
        return modelAndView;
    }


//      ------------------------------------------------------------------------------------

    @RequestMapping("/findOperationRequestWaitingHandle")
    public ModelAndView findOperationRequestWaitingHandle() {
        List<OperationRequest> operationRequests = managerService.findOperationRequestWaitingHandle();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("operationRequests", operationRequests);
        modelAndView.setViewName("adminOperationRequestList");
        return modelAndView;
    }

    @RequestMapping("/handleOperationRequest")
    public ModelAndView handleOperationRequest(@RequestParam("id") int id, @RequestParam("operationTime") String operationTime) {
        managerService.handleOperationRequest(id);
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("or_id", id);
        modelAndView.addObject("operationTime", operationTime);

        modelAndView.setViewName("addOperation");
        return modelAndView;
    }

    @RequestMapping("/insertOperationInfo")
    @ResponseBody
    public ModelAndView insertOperationInfo(Operation operation) {
        managerService.insertOperationInfo(operation);

        List<OperationRequest> operationRequests = managerService.findOperationRequestWaitingHandle();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("operationRequests", operationRequests);
        modelAndView.setViewName("adminOperationRequestList");
        return modelAndView;
    }
}
