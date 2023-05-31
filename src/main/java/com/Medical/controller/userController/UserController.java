package com.Medical.controller.userController;

import com.Medical.domain.*;
import com.Medical.service.userService.Impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller("userController")
@RequestMapping(value = "/userMethod")
public class UserController {

    @Autowired
    private HttpServletRequest request;


    @Autowired
    private HttpServletResponse response;

    @Autowired
    private UserServiceImpl userService;

    @RequestMapping(value = "/login", produces = "text/html;charset=utf-8")
    @ResponseBody
//    用户登录
    public ModelAndView login(String username, String password) {
        Users user = userService.login(username, password);
        ModelAndView modelAndView = new ModelAndView();
        if (user == null) {
            modelAndView.addObject("error", "用户名或者密码错误");
            modelAndView.setViewName("userLogin");
        } else {
//            将用户信息保存到session中
            request.getSession().setAttribute("user", user);
            modelAndView.setViewName("Index");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/register", produces = "text/html;charset=utf-8")
    @ResponseBody
//    用户注册
    public ModelAndView register(Users user) {
        userService.register(user);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userLogin");
        return modelAndView;
    }

    //    实现用户注销
    @RequestMapping(value = "/logout")
    public ModelAndView logout() {

        request.getSession().removeAttribute("user");

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("userLogin");
        return modelAndView;
    }


    @RequestMapping(value = "/addPatient", produces = "text/html;charset=utf-8")
    @ResponseBody
//    用于添加就诊人信息
    public ModelAndView addPatient(Patients patient) {
        Users user = (Users) request.getSession().getAttribute("user");
        patient.setUid(user.id);

        userService.addPatient(patient);
        List<Patients> patients = userService.findAllPatient(user.getId());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("patients", patients);
        modelAndView.setViewName("patientList");
        return modelAndView;
    }


    @RequestMapping(value = "/findAllPatient", produces = "text/html;charset = utf-8")
    @ResponseBody
//    用于查询当前用户添加的所有就诊人
    public ModelAndView findAllPatient() {
//        从之前会话的session中获取user的登录信息
        Users user = (Users) request.getSession().getAttribute("user");
        List<Patients> patients = userService.findAllPatient(user.id);
        String redirect = request.getParameter("redirect");

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("patients", patients);
        modelAndView.setViewName("patientList");
        return modelAndView;
    }

    @RequestMapping(value = "/findPatients", produces = "text/html;charset=utf-8")
    public ModelAndView findAllPatient1() {
        Users user = (Users) request.getSession().getAttribute("user");
        List<Patients> patients = userService.findAllPatient(user.id);
        String redirect = request.getParameter("redirect");

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("patients", patients);
        modelAndView.addObject("redirect", redirect);
        modelAndView.setViewName("choseOnePatient");
        return modelAndView;
    }


    @RequestMapping(value = "/deletePatient", produces = "text/html;charset = utf-8")
//    删除就诊人信息
    public ModelAndView deletePatient() {
        Users user = (Users) request.getSession().getAttribute("user");
        String id = request.getParameter("id");
        userService.deletePatient(id);

        List<Patients> patients = userService.findAllPatient(user.getId());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("patients", patients);
        modelAndView.setViewName("patientList");
        return modelAndView;
    }

    @RequestMapping(value = "/choseOnePatient")
    public ModelAndView choseOnePatient() {
        String id = request.getParameter("id");
        Patients patients = userService.choseOnePatient(id);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("patients", patients);
        modelAndView.setViewName("updatePatient");
        return modelAndView;
    }

    @RequestMapping("/updatePatient")
    @ResponseBody
    public ModelAndView updatePatient(Patients patient) {
        userService.updatePatient(patient);

        ModelAndView modelAndView = new ModelAndView();
        Users user = (Users) request.getSession().getAttribute("user");
        List<Patients> patients = userService.findAllPatient(user.getId());
        modelAndView.addObject("patients", patients);
        modelAndView.setViewName("patientList");
        return modelAndView;
    }

    @RequestMapping("/queryHosCertification")
//    查出属于当前使用登录成功的用户的所有申请成功的住院证明
    public ModelAndView queryHosCertification() {
        Users user = (Users) request.getSession().getAttribute("user");
        List<Admission> admissions = userService.queryHosCertification(user.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("admissions", admissions);
        modelAndView.setViewName("userAdmissionList");
        return modelAndView;
    }

    @RequestMapping("/queryHospitalStay")
    public ModelAndView queryHospitalStay() {
        Users user = (Users) request.getSession().getAttribute("user");
        List<HospitalStay> hospitalStays = userService.queryHospitalStay(user.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("hospitalStays", hospitalStays);
        modelAndView.setViewName("userHospitalStayList");
        return modelAndView;
    }

    @RequestMapping("/queryOperationInfo")
    public ModelAndView queryOperationInfo() {
        Users user = (Users) request.getSession().getAttribute("user");
        List<OperationInfo> operationInfos = userService.queryOperationInfo(user.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("operationInfos", operationInfos);
        modelAndView.setViewName("operationInfoList");
        return modelAndView;
    }

}
