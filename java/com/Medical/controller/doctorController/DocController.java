package com.Medical.controller.doctorController;

import com.Medical.domain.*;
import com.Medical.service.doctorService.Impl.DocServiceImpl;
import com.Medical.service.userService.Impl.WorkDayServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller("docController")
@RequestMapping("/docMethod")
public class DocController {

    @Autowired
    private DocServiceImpl docService;
    @Autowired
    private WorkDayServiceImpl workDayService;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private HttpServletResponse response;

    @RequestMapping("/docLogin")
    @ResponseBody
    public ModelAndView login(@RequestParam("account") String account, @RequestParam("password") String password) {
        Doctors doctor = docService.findDocByAccountAndPassword(account, password);

        ModelAndView modelAndView = new ModelAndView();
        if (doctor == null) {
            modelAndView.addObject("error", "用户名和密码错误");
            modelAndView.setViewName("docLogin");
        } else {
//            将用户信息保存到session中
            request.getSession().setAttribute("doctor", doctor);
            modelAndView.setViewName("docIndex");
        }
        return modelAndView;
    }

    //    实现用户注销
    @RequestMapping(value = "/logout")
    public ModelAndView logout() {
        request.getSession().removeAttribute("doctor");

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("docLogin");
        return modelAndView;
    }

    @RequestMapping("/findOrdersByDocId")
//    医生可以查看当前属于自己的并且处于预约成功状态的订单
    public ModelAndView findOrdersByDocId() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");

        List<Orders> orders = docService.findOrderByDocId(doctor.getId());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("orders", orders);
        modelAndView.setViewName("docOrderList");
        return modelAndView;
    }

    @RequestMapping("/completeOrder")
//    医生完成会诊后点击完成订单功能，让订单变为完成状态
    public ModelAndView completeOrder() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        docService.completeOrder(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        List<Orders> orders = docService.findOrderByDocId(doctor.getId());
        modelAndView.addObject("orders", orders);
        modelAndView.setViewName("docOrderList");
        return modelAndView;
    }

    @RequestMapping("/findOwnWorkDay")
    public ModelAndView findOwnWorkDays() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        List<WorkDay> workdays = workDayService.queryWorkDayByDocId(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("workdays", workdays);
        modelAndView.setViewName("docWorkdayList");
        return modelAndView;
    }

    @RequestMapping("/sendApply")
    @ResponseBody
//    给医生一个功能，给出所有他当前的工作日信息（一个表，workdayList），从中选择一个进行修改,然后进入到填写信息页面
//    点击按钮时，直接将workday_id传入对应填写信息页面
    public ModelAndView sendApply(Apply apply) {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        apply.setDoc_id(doctor.getId());
        apply.setDoc_name(doctor.getDoc_name());
        apply.setState("等待处理");

        String applyTime1 = apply.getApplyTime();
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        Date applyTime = null;
        try {
            applyTime = simpleDateFormat1.parse(applyTime1);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        apply.setApplyTime(simpleDateFormat1.format(applyTime));

        docService.insertApply(apply);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("docApplyList");
        return modelAndView;
    }



    @RequestMapping("/sendApply1")
    @ResponseBody
//    给医生一个功能，给出所有他当前的工作日信息（一个表，workdayList），从中选择一个进行修改,然后进入到填写信息页面
//    点击按钮时，直接将workday_id传入对应填写信息页面
    public ModelAndView sendApply1(Apply apply) {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        apply.setDoc_id(doctor.getId());
        apply.setDoc_name(doctor.getDoc_name());
        apply.setState("等待处理");

        String applyTime1 = apply.getApplyTime();
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        Date applyTime = null;
        try {
            applyTime = simpleDateFormat1.parse(applyTime1);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        apply.setApplyTime(simpleDateFormat1.format(applyTime));

        docService.insertApply(apply);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("docApplyList");
        return modelAndView;
    }


    @RequestMapping("/findAllApplies")
    public ModelAndView findAllApplies() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        List<Apply> applies = docService.queryAppliesByDocId(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("applies", applies);
        modelAndView.setViewName("docApplyList");
        return modelAndView;
    }

    @RequestMapping("/hospitalizationApply")
    @ResponseBody
//    发出住院申请
    public ModelAndView hospitalizationApply(Admission admission) {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        admission.setDoc_id(doctor.getId());

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        admission.setApplyTime(simpleDateFormat.format(new Date()));

        admission.setState("等待处理");

        docService.insertAdmission(admission);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("docAdmissionList");
        return modelAndView;
    }

    @RequestMapping("/queryAdmissionsByDocId")
//    查看发出的所有住院申请
    public ModelAndView queryAdmissionsByDocId() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        List<Admission> admissions = docService.queryAdmissionsByDocId(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("admissions", admissions);
        modelAndView.setViewName("docAdmissionList");
        return modelAndView;
    }

    @RequestMapping("/addLeaveHosApply")
    @ResponseBody
//    发出出院申请,在当前医生所有的病人的住院证明中可以点击离院，发出离院申请
    public ModelAndView addLeaveHosApply(HosApply hosApply) {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        hosApply.setDoc_id(doctor.getId());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        hosApply.setApplyTime(simpleDateFormat.format(new Date()));

        String dischargeTime1 = hosApply.getDischargeTime();
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        Date dischargeTime = null;
        try {
            dischargeTime = simpleDateFormat1.parse(dischargeTime1);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        hosApply.setDischargeTime(simpleDateFormat1.format(dischargeTime));
        hosApply.setState("等待处理");
        docService.insertHosApply(hosApply);

        List<HosApply> hosApplies = docService.findHosApplyByDocId(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hosApplies", hosApplies);
        modelAndView.setViewName("docHosApplyList");
        return modelAndView;
    }

    //  查询所有出院申请
    @RequestMapping("/queryHosApplyByDocId")
    public ModelAndView queryHosApplyByDocId() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        List<HosApply> hosApplies = docService.findHosApplyByDocId(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hosApplies", hosApplies);
        modelAndView.setViewName("docHosApplyList");
        return modelAndView;
    }


    @RequestMapping("/queryHosStayInfo")
    public ModelAndView queryHosStayInfo() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        List<HospitalStay> hospitalStays = docService.queryHosStayInfo(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hospitalStays", hospitalStays);
        modelAndView.setViewName("docHospitalStayList");
        return modelAndView;
    }

    @RequestMapping("/addOperationRequest")
    @ResponseBody
//    只有住院的患者才可以做手术，所以，在当前医生所有患者住院信息中 有一个添加手术信息按钮，点击这个按钮，然后跳转到添加手术信息列表
    public ModelAndView insertOperationRequest(OperationRequest operationRequest) {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        operationRequest.setDoc_id(doctor.getId());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        operationRequest.setApplyTime(simpleDateFormat.format(new Date()));
        operationRequest.setState("等待处理");

        String operationTime = operationRequest.getOperationTime();
        SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("yyyy-MM-dd");
        Date operationDate = null;
        try {
            operationDate = simpleDateFormat1.parse(operationTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        operationRequest.setOperationTime(simpleDateFormat1.format(operationDate));

        docService.insertOperationRequest(operationRequest);
        List<HospitalStay> hospitalStays = docService.queryHosStayInfo(doctor.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hospitalStays", hospitalStays);
        modelAndView.setViewName("docHospitalStayList");
        return modelAndView;
    }

    @RequestMapping("/queryOperationRequests")
//    医生查询所有的手术请求
    public ModelAndView queryOperationRequests() {
        Doctors doctor = (Doctors) request.getSession().getAttribute("doctor");
        List<OperationRequest> operationRequests = docService.queryOperationRequestsByDocId(doctor.getId());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("operationRequests", operationRequests);
        modelAndView.setViewName("docOperationRequestList");
        return modelAndView;
    }


}
