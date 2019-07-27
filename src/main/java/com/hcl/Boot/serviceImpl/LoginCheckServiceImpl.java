package com.hcl.Boot.serviceImpl;

import com.hcl.Boot.Model.User;
import com.hcl.Boot.Dao.LoginCheckDao;
import com.hcl.Boot.DaoImpl.LoginCheckDaoImpl;
import com.hcl.Boot.service.LoginCheckService;

public class LoginCheckServiceImpl implements LoginCheckService{

	private LoginCheckDao check = new LoginCheckDaoImpl();
	@Override
	public boolean checkLogin(User user) {
		return check.check(user);
		
	
		
	}

}
