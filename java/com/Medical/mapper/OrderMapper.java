package com.Medical.mapper;

import com.Medical.domain.Orders;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderMapper {
    @Insert("insert into orders values(#{id},#{uid},#{wid},#{pid},#{pname},#{doc_id},#{doc_name},#{dept_name},#{visitDate},#{visitNoon},#{dateTime},#{state})")
    public void insertOrder(Orders order);

    @Select("select * from orders where id = #{id} order by visitDate DESC, id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "uid", property = "uid"),
            @Result(column = "wid", property = "wid"),
            @Result(column = "pid", property = "pid"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "doc_name", property = "doc_name"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "visitDate", property = "visitDate"),
            @Result(column = "visitNoon", property = "visitNoon"),
            @Result(column = "dateTime", property = "dateTime"),
            @Result(column = "state", property = "state")
    })
//    用户点击订单查询按钮，转到对应订单页面，然后显示订单信息
    public Orders queryByOrderId(int id);

    @Select("select * from orders where uid = #{uid} order by visitDate DESC, id desc")
    @Results({
            @Result(column = "id", property = "id"),
            @Result(column = "uid", property = "uid"),
            @Result(column = "wid", property = "wid"),
            @Result(column = "pid", property = "pid"),
            @Result(column = "pname", property = "pname"),
            @Result(column = "doc_id", property = "doc_id"),
            @Result(column = "doc_name", property = "doc_name"),
            @Result(column = "dept_name", property = "dept_name"),
            @Result(column = "visitDate", property = "visitDate"),
            @Result(column = "visitNoon", property = "visitNoon"),
            @Result(column = "dateTime", property = "dateTime"),
            @Result(column = "state", property = "state")
    })
    public List<Orders> findAllOrder(String uid);

    @Update("delete from orders where id = #{id}")
    public void cancelOrder(int id);


}
