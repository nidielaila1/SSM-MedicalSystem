package com.Medical.service.userService;

import com.Medical.domain.Orders;

import java.util.List;

public interface OrderService {
    public void insertOrder(Orders order);

    public Orders queryByOrderId(int id);

    public List<Orders> findAllOrder(String uid);

    public void cancelOrder(int id);
}
