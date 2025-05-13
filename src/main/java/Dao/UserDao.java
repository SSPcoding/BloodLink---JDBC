package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import CommonConnection.CommonConnection;
import Pojo.Users;

public class UserDao {
	public int save(Users user) {
		Connection connection = CommonConnection.getConnection();
		System.out.println(connection);
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("insert into user(uname,umail,upass) values(?,?,?);");
			stmt.setString(1, user.getUname());
			stmt.setString(2, user.getUmail());
			stmt.setString(3, user.getUpass());
			int i = stmt.executeUpdate();
			System.out.println(i + " records inserted");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 1;
}
}
