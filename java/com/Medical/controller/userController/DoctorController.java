package com.Medical.controller.userController;

import com.Medical.domain.Doctors;
import com.Medical.service.userService.Impl.DoctorServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller("doctorController")
@RequestMapping("/doctorMethod")
public class DoctorController {

    @Autowired
    private DoctorServiceImpl doctorService;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private HttpServletResponse response;

    @RequestMapping("/findDocByDeptName")
    @ResponseBody
    public ModelAndView findDocByDeptName() {
//        通过在科室列表选择对应科室，然后将科室上传得到dept_name
        String dept_name = request.getParameter("dept_name");
        List<Doctors> doctors = doctorService.findDocByDeptName(dept_name);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("doctors", doctors);
        modelAndView.setViewName("doctorList");
        return modelAndView;
    }

    @RequestMapping("/findDocById")
    @ResponseBody
    public ModelAndView findDocById(int id) {
        Doctors doctor = doctorService.findDocByDocId(id);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("doctor", doctor);
        modelAndView.setViewName("doctors/" + doctor.getId());
        return modelAndView;
    }

    @RequestMapping("/findAllDoc")
    public ModelAndView findAllDoc() {
        List<Doctors> doctors = doctorService.findAllDoc();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("doctors", doctors);
        modelAndView.setViewName("doctorList");
        return modelAndView;
    }


}
