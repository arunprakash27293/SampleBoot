package com.hcl.Boot.serviceImpl;

import java.util.List;


import com.hcl.Boot.Dao.GetItemDao;
import com.hcl.Boot.DaoImpl.GetItemDaoImpl;
import com.hcl.Boot.Model.Item;
import com.hcl.Boot.service.GetItemService;

public class GetItemServiceImpl implements GetItemService{

	private GetItemDao getitem= new GetItemDaoImpl();
	@Override
	public List<Item> getItem() {
		
		return getitem.showItem();
	}

}
