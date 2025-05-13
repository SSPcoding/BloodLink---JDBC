<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="CommonConnection.CommonConnection" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Donor Table</title>
    <link rel="stylesheet" href="./donorTable.css" />
</head>
<body>
	<header>
      <a href="#" class="logo">Blood Bucket</a>
      <ul class="navbar">
        <li><a href="./donorTable.jsp">Donor Table</a></li>
        <li><a href="./requistionTable.jsp">Requistion Table</a></li>
        <li><a href="./LogoutServlet" class="hide">Logout</a></li>
      </ul>
    </header>
    <h2>Requisition List</h2>
    <div class="table-wrapper">
        <table class="fl-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Required Blood Group</th>
                    <th>Required Blood Unit</th>
                    <th>Issue</th>
                    <th>Cause Of Requirement</th>
                </tr>
            </thead>
            <tbody>
                <%
                try {
                    Connection connection = CommonConnection.getConnection();
                    Statement st = connection.createStatement();
                    ResultSet rs = st.executeQuery("select * from seeker");
                    while (rs.next()) {
                %>
                    <tr>
                        <td><%= rs.getInt(1) %></td>
                        <td><%= rs.getString(2) %></td>
                        <td><%= rs.getString(3) %></td>
                        <td><%= rs.getString(4) %></td>
                        <td><%= rs.getString(5) %></td> 
                        <td><%= rs.getInt(6) %></td>
                        <td><%= rs.getString(7) %></td>
                        <td><%= rs.getString(8) %></td>
                        <td><%= rs.getString(9) %></td>
                        <td><%= rs.getString(10) %></td>
                        <td><%= rs.getString(11) %></td>
                    </tr>
                <%
                    }
                    connection.close(); // Close the connection after use
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
