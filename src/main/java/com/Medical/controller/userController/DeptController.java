package com.Medical.controller.userController;

import com.Medical.domain.Department;
import com.Medical.service.userService.Impl.DepartmentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller("deptController")
@RequestMapping("/deptMethod")
public class DeptController {

    @Autowired
    private DepartmentServiceImpl deptService;

    @RequestMapping("/findAllDept")
    public ModelAndView findAllDept() {
        List<Department> depts = deptService.findAllDept();

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("depts", depts);
        modelAndView.setViewName("deptList");
        return modelAndView;
    }

}
