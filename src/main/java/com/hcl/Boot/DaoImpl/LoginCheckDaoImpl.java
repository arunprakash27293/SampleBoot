package com.hcl.Boot.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.hcl.Boot.DB_Connect;
import com.hcl.Boot.Model.User;
import com.hcl.Boot.Dao.LoginCheckDao;

public class LoginCheckDaoImpl implements LoginCheckDao {
	private Connection conn = DB_Connect.getConnection();
	@Override
	public boolean check(User user) {
		String sql = "select * from user where username = ? AND password = ?";
		ResultSet rs;
		boolean result =false;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			
			rs=pstmt.executeQuery();
			System.out.println("SQL:::"+sql);
			
			if(rs.next()) {
				result = true;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return result;
		
	}

}
