package com.hcl.Boot.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.hcl.Boot.DB_Connect;
import com.hcl.Boot.Dao.PlaceOrderDao;
import com.hcl.Boot.Model.Order;

public class PlaceOrderDaoImpl implements PlaceOrderDao {

	private Connection conn = DB_Connect.getConnection();

	@Override
	public void insertOrder(Order order) {
		ResultSet rs = null;
		int amount = 0;
		String sql = "insert into new_order (oitem_id,order_by,quantity,amount) values (?,?,?,?)";
		String price = "select iprice from item where item_id = ?";

		try {
			PreparedStatement pricest = conn.prepareStatement(price);
			pricest.setInt(1, order.getOitem_id());
			int cal_price = 0;
			rs = pricest.executeQuery();
			if (rs.next()) {
				cal_price = rs.getInt(1);
				System.out.println("Price:" +cal_price);
				
			}

			PreparedStatement pstmt = conn.prepareStatement(sql);
			amount = cal_price * order.getQuantity();
			pstmt.setInt(1, order.getOitem_id());
			pstmt.setString(2, order.getOrder_by());
			pstmt.setInt(3, order.getQuantity());
			pstmt.setInt(4, amount);

			pstmt.execute();
			System.out.println("SQL:::" + sql);
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
}
