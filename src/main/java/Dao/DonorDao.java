package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import CommonConnection.CommonConnection;
import Pojo.Donors;

public class DonorDao {
	public void save(Donors donor) {
		Connection connection = CommonConnection.getConnection();
		System.out.println(connection);
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement("insert into donor(Dname,Dphone,Dmail,Daddress,Dage,Dblood,Ddisease,Dsymptoms) values(?,?,?,?,?,?,?,?)");
			stmt.setString(1, donor.getDname());
			stmt.setString(2, donor.getDphone());
			stmt.setString(3, donor.getDmail());
			stmt.setString(4, donor.getDaddress());
			stmt.setInt(5, donor.getDage());
			stmt.setString(6, donor.getDblood_group());
			stmt.setString(7, donor.getDiseases());
			stmt.setString(8, donor.getDsymptoms());
			int i = stmt.executeUpdate();
			System.out.println(i + " records inserted");
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}