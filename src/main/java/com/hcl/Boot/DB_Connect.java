package com.hcl.Boot;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_Connect {

	public static Connection getConnection() {
		// Creating the connection
		String url = "jdbc:mysql://localhost:3306/db-boot";
		String user = "root";
		String pass = "";

		Connection con = null;
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			// Reference to connection interface
			con = DriverManager.getConnection(url, user, pass);

		} catch (Exception ex) {
			System.err.println(ex);
		}
		return con;

	}
}
