package com.Medical.service.userService.Impl;

import com.Medical.domain.Orders;
import com.Medical.mapper.OrderMapper;
import com.Medical.service.userService.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Override
    public void insertOrder(Orders order) {
        orderMapper.insertOrder(order);
    }

    @Override
    public Orders queryByOrderId(int id) {
        return orderMapper.queryByOrderId(id);
    }

    @Override
    public List<Orders> findAllOrder(String uid) {
        return orderMapper.findAllOrder(uid);
    }

    @Override
    public void cancelOrder(int id) {
        orderMapper.cancelOrder(id);
    }


}
