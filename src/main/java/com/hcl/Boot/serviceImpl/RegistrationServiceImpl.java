package com.hcl.Boot.serviceImpl;

import com.hcl.Boot.Model.User;
import com.hcl.Boot.Dao.RegistrationDao;
import com.hcl.Boot.DaoImpl.RegistrationDaoImpl;
import com.hcl.Boot.service.RegistrationService;

public class RegistrationServiceImpl implements RegistrationService {

	private RegistrationDao reg = new RegistrationDaoImpl();
	@Override
	public void saveUser(User user) {
		reg.insertUser(user);
		
	}

}
