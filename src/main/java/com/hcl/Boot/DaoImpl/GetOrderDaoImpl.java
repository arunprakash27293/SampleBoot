package com.hcl.Boot.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hcl.Boot.DB_Connect;
import com.hcl.Boot.Dao.GetOrderDao;
import com.hcl.Boot.Model.*;

public class GetOrderDaoImpl implements GetOrderDao{

	private Connection conn = DB_Connect.getConnection();

	@Override
	public List<Order> showOrder(String uname) {
		String sql = "SELECT i.iname,o.quantity,o.order_status,o.amount from new_order o,item i where o.oitem_id = i.item_id AND o.order_by ='"+uname+"'";
		System.out.println("myorder query"+sql);
		ResultSet rs;
		List<Order> l = new ArrayList<Order>();
		
		try {
		
			Statement stmt = conn.createStatement();
			rs=stmt.executeQuery(sql);
			System.out.println("SQL:::"+sql);
			
			
			while(rs.next()) {
				Order o = new Order();
				
				o.setItem_name(rs.getString(1));
				o.setQuantity(rs.getInt(2));
				o.setOrder_status(rs.getInt(3));
				o.setAmount(rs.getInt(4));
				
				l.add(o);		
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return l;
	}
}
