package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import CommonConnection.CommonConnection;
import Pojo.Seek;

public class SeekDao {
	public void save(Seek seeker) {
		Connection connection = CommonConnection.getConnection();
		System.out.println(connection);
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("INSERT INTO seeker(pname, pphone, pmail, paddress, age, pgender, pblood, prequire, pdisease, pcause) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			stmt.setString(1, seeker.getPname());
			stmt.setString(2, seeker.getPphone());
			stmt.setString(3, seeker.getPmail());
			stmt.setString(4, seeker.getPaddress());
			stmt.setInt(5, seeker.getAge());
			stmt.setString(6, seeker.getPgender());
			stmt.setString(7, seeker.getPblood());
			stmt.setString(8, seeker.getPrequire());
			stmt.setString(9, seeker.getPdisease());
			stmt.setString(10, seeker.getPcause());
			int i = stmt.executeUpdate();
			System.out.println(i + " records inserted");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}