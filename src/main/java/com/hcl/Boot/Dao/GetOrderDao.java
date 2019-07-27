package com.hcl.Boot.Dao;

import java.util.List;

import com.hcl.Boot.Model.Order;

public interface GetOrderDao {

	public  List<Order> showOrder(String uname);
}
