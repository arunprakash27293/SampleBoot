package com.hcl.Boot.serviceImpl;

import com.hcl.Boot.Dao.PlaceOrderDao;
import com.hcl.Boot.DaoImpl.PlaceOrderDaoImpl;
import com.hcl.Boot.Model.Order;
import com.hcl.Boot.service.PlaceOrderService;

public class PlaceOrderServiceImpl implements PlaceOrderService {

	private PlaceOrderDao place = new PlaceOrderDaoImpl();
	@Override
	public void saveOrder(Order order) {
		
		place.insertOrder(order);
	}

}
