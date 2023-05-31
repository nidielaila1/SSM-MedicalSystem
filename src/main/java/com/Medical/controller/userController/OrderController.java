package com.Medical.controller.userController;

import com.Medical.domain.Doctors;
import com.Medical.domain.Orders;
import com.Medical.domain.Users;
import com.Medical.domain.WorkDay;
import com.Medical.service.userService.Impl.DoctorServiceImpl;
import com.Medical.service.userService.Impl.OrderServiceImpl;
import com.Medical.service.userService.Impl.WorkDayServiceImpl;
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

@Controller("orderController")
@RequestMapping("/orderMethod")
public class OrderController {

    @Autowired
    private OrderServiceImpl orderService;
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private HttpServletResponse response;

    @Autowired
    private UserController userController;

    @Autowired
    private DoctorServiceImpl doctorService;

    @Autowired
    private WorkDayServiceImpl workDayService;

    @RequestMapping("/keepOrderInfo")
    public ModelAndView keepOrderInfo() {
//        在workdayList页面中，找到对应的上下午，选择有号源的一个上午或者下午
//        然后跳到keepOrderInfo方法中，然后将所有信息全部放到createOrder创建订单界面，
//        然后再在该界面有一个a标签，点击改标签跳转到choseOnePatient界面，然后选择其中一个就诊人，将id信息发回到createOrder界面
//        然后点击提交预约，跳转到insertOrder方法中提交订单

        Users user = (Users) request.getSession().getAttribute("user");

        int id = Integer.parseInt(request.getParameter("workId"));
        System.out.println(id);
        String workTime = request.getParameter("workTime");
        String ampm = request.getParameter("ampm");
        int doc_id = Integer.parseInt(request.getParameter("did"));
        System.out.println(doc_id);

        Doctors doctor = doctorService.findDocByDocId(doc_id);
        System.out.println(doctor);

//        所有全部添加成功后，添加订单信息
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("uid", user.getId());
        modelAndView.addObject("wid", id);
        modelAndView.addObject("doc_id", doc_id);
        modelAndView.addObject("doc_name", doctor.getDoc_name());
        modelAndView.addObject("dept_name", doctor.getDept_name());
        modelAndView.addObject("visitDate", workTime);
        modelAndView.addObject("visitNoon", ampm);
        modelAndView.setViewName("orderInfo");
        return modelAndView;
    }


//    pid 和 pname 在选择完就诊人后添加到order信息中

    @RequestMapping("/insertOrder")
    @ResponseBody
    public ModelAndView insertOrder(Orders order) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        order.setDateTime(dateFormat.format(new Date()));
        order.setState("预约成功");

        orderService.insertOrder(order);
        System.out.println(order);
        WorkDay workday = workDayService.queryWorkDayById(order.getWid());
        int nsnum = workday.getNsnum() - 1;
        int id = workday.getId();
        workDayService.updateNsNum(nsnum, id);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("Index");
        return modelAndView;
    }

//    用户如果想要查找订单信息，首先要进入订单列表，然后根据想要查询哪一单的详细信息，然后跳转到对应的订单的信息页面

//    流程： 点击订单查询功能 ->  进入orderList.jsp  ->  选择对应的订单  ->  orderInfo.jsp

    @RequestMapping("/findAllOrder")
    public ModelAndView findAllOrder() {
        Users user = (Users) request.getSession().getAttribute("user");
        List<Orders> orders = orderService.findAllOrder(user.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("orders", orders);
        modelAndView.setViewName("userOrderList");
        return modelAndView;
    }

    @RequestMapping("/queryOrderById")
    public ModelAndView queryOrderById() {
        int id = Integer.parseInt(request.getParameter("id"));
        Orders order = orderService.queryByOrderId(id);

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("orders", order);
        modelAndView.setViewName("orderInfo2");
        return modelAndView;
    }

    @RequestMapping("/cancelOrder")
    public ModelAndView cancelOrder(@RequestParam("id") int id) {
        Orders order = orderService.queryByOrderId(id);
        int wid = order.getWid();
        WorkDay workDay = workDayService.queryWorkDayById(wid);
        int nsnum = workDay.getNsnum() + 1;
        workDayService.updateNsNum(nsnum, wid);

        orderService.cancelOrder(id);

        Users user = (Users) request.getSession().getAttribute("user");
        List<Orders> orders = orderService.findAllOrder(user.getId());

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("orders", orders);
        modelAndView.setViewName("userOrderList");
        return modelAndView;
    }

}
