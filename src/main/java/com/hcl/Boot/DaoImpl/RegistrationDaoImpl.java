package com.hcl.Boot.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.hcl.Boot.DB_Connect;
import com.hcl.Boot.Model.User;
import com.hcl.Boot.Dao.RegistrationDao;

public class RegistrationDaoImpl implements RegistrationDao {
	
private Connection conn = DB_Connect.getConnection();
	@Override
	public void insertUser(User user) {
		String sql = "insert into user (username,password,email,phone,address) values (?,?,?,?,?)";
				try {
					PreparedStatement pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, user.getUsername());
					pstmt.setString(2, user.getPassword());
					pstmt.setString(3, user.getEmail());
					pstmt.setString(4, user.getPhone());
					pstmt.setString(5, user.getAddress());
					pstmt.execute();
					System.out.println("SQL:::"+sql);
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
		
	}

}
