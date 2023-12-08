//package com.java.ymca.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDB {

	@SuppressWarnings("null")
	public String validateCredentials(LoginCredential loginCred) throws SQLException {

		String uid = null;
		String mid = null;
		String userid = null;
		Connection connect = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		/*
		 * String url1 = "jdbc:mysql://localhost:3306/ymca_program"; String user =
		 * "root"; String password = "root123"; Connection conn1 =
		 * DriverManager.getConnection(url1, user, password);
		 */

		connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");
		PreparedStatement pStatement = connect
				.prepareStatement("select * from login where username = ? and password = ?");
		pStatement.setString(1, loginCred.getUsername());
		pStatement.setString(2, loginCred.getPassword());
		String name = loginCred.getUsername();
		System.out.println(pStatement);
		ResultSet rSet = pStatement.executeQuery();
		while (rSet.next()) { // Position the cursor 4
			uid = rSet.getString(1);
		}
		if (uid == null)
			return null;

		else {
			int status = 0;
			PreparedStatement pStatement2;
			if (name.startsWith("S")) {
				pStatement2 = connect.prepareStatement("select ActiveStatus from staffs where StaffID = ?");
				pStatement2.setString(1, loginCred.getUsername());
			} else {
				pStatement2 = connect.prepareStatement("select ActiveStatus from users where UserID = ?");
				pStatement2.setString(1, uid);

			}
			ResultSet rSet2 = pStatement2.executeQuery();
			while (rSet2.next()) { // Position the cursor 4
				status = rSet2.getInt(1);
			}
			if (status == 0)
				return null;
			if (name.startsWith("S")) {
				uid = uid + "_S";
				return uid;
			} else {
				loginCred.setUserID(uid);

				pStatement = connect.prepareStatement("select MemberID from users where UserID = ?");
				pStatement.setString(1, uid);

				System.out.println(pStatement);
				rSet = pStatement.executeQuery();

				while (rSet.next()) { // Position the cursor 4
					mid = rSet.getString(1);
				}

				if (mid == null) {
					userid = "";
					uid = uid + "_N";
				} else {
					userid = "";
					uid = uid + "_M";
				}

				userid = userid + uid;

				return userid;
			}
		}
	}

	@SuppressWarnings("null")
	public String getID(LoginCredential loginCred) throws SQLException {
		String uid = null;
		/*
		 * String mid = null; String userid = null; Connection connect = null; try {
		 * Class.forName("com.mysql.cj.jdbc.Driver"); } catch (ClassNotFoundException e)
		 * { // TODO Auto-generated catch block e.printStackTrace(); } /* String url1 =
		 * "jdbc:mysql://localhost:3306/ymca_program"; String user = "root"; String
		 * password = "root123"; Connection conn1 = DriverManager.getConnection(url1,
		 * user, password);
		 */
		/*
		 * connect = DriverManager.getConnection(
		 * "jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");
		 * PreparedStatement pStatement = connect
		 * .prepareStatement("select UserID from login where username = ? and password = aes_encrypt(?,'AthiraYMCA')"
		 * ); pStatement.setString(1, loginCred.getUsername()); pStatement.setString(2,
		 * loginCred.getPassword());
		 * 
		 * System.out.println(pStatement); ResultSet rSet = pStatement.executeQuery();
		 * 
		 * while (rSet.next()) { // Position the cursor 4 uid = rSet.getString(1); }
		 * 
		 * loginCred.setUserID(uid);
		 * 
		 * pStatement =
		 * connect.prepareStatement("select MemberID from login where UserID = ?)");
		 * pStatement.setString(1, loginCred.getUserID());
		 * 
		 * System.out.println(pStatement); rSet = pStatement.executeQuery();
		 * 
		 * while (rSet.next()) { // Position the cursor 4 mid = rSet.getString(1); }
		 * if(mid.equals("000")) uid.concat("_N"); else uid.concat("_M");
		 * userid.concat(uid);
		 */
		return uid;
	}
}
