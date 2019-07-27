package com.hcl.Boot.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hcl.Boot.DB_Connect;
import com.hcl.Boot.Dao.GetItemDao;
import com.hcl.Boot.Model.Item;

public class GetItemDaoImpl implements GetItemDao {
	private Connection conn = DB_Connect.getConnection();

	@Override
	public List<Item> showItem() {
		String sql = "select * from item";
		ResultSet rs;
		List<Item> l = new ArrayList<Item>();
		
		try {
			Statement stmt = conn.createStatement();
			rs=stmt.executeQuery(sql);
			System.out.println("SQL:::"+sql);
			
			
			while(rs.next()) {
				Item i = new Item();
				i.setItem_id(rs.getInt(1));
				i.setIname(rs.getString(2));
				i.setIprice(rs.getInt(3));
				l.add(i);		
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return l;
	}
}
