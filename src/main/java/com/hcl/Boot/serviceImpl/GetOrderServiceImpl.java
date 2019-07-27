package com.hcl.Boot.serviceImpl;

import java.util.List;

import com.hcl.Boot.Dao.GetOrderDao;
import com.hcl.Boot.DaoImpl.GetOrderDaoImpl;
import com.hcl.Boot.Model.Order;
import com.hcl.Boot.service.GetItemService;
import com.hcl.Boot.service.GetOrderService;

public class GetOrderServiceImpl implements GetOrderService {

	private GetOrderDao getorder= new GetOrderDaoImpl();
	@Override
	public List<Order> getOrder(String uname) {
		
		return getorder.showOrder(uname);
	}
}
