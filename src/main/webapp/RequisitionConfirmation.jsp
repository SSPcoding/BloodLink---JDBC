<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="CommonConnection.CommonConnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<style >
    header{
    background-color: #d71313;
    }
	header h2{
		margin-left:37%;
		color:white;
	}
</style>
<meta charset="UTF-8">
<title>Confirmation</title>
<link rel="stylesheet" href="./index.css" />
<link
      rel="stylesheet"
      href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"
    />
</head>

<body>
         <header> <h2>Thank You For Filling This Form <span><i class='bx bxs-donate-blood' ></i></span></h2></header>	
 <section class="cta" id="cta">
 		<% try {
                 Connection connection = CommonConnection.getConnection();
                 Statement st = connection.createStatement();
                 ResultSet rs = st.executeQuery("select pid , pname from seeker ORDER BY pid DESC LIMIT 1");
                 while (rs.next()) {
         %>
 	  <h3>Patient ID: <%= rs.getInt(1) %></h3>
      <h2>Patient Name: <%= rs.getString(2) %></h2>
      <h2>Date: <%= new SimpleDateFormat("dd-MM-yyyy").format(new Date()) %></h2>
       	<%}
                 connection.close(); 
               } catch (Exception e) {
                 	e.printStackTrace();
                	}
        %>
     
    </section>
	<section id="contact">
      <div class="footer">
        <div class="main">
          <div class="col">
            <h4>Menu</h4>
            <ul>
              <li><a href="#home">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#blog">Blog</a></li>
              <li><a href="#">Service</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div>

          <div class="col">
            <h4>Our services</h4>
            <ul>
              <li><a href="#">Emergency Helpline</a></li>
              <li><a href="#">Locations</a></li>
              <li><a href="#">Hospital Partners</a></li>
              <li><a href="#">Affliliations</a></li>
            </ul>
          </div>
          <div class="col">
            <h4>Resources</h4>
            <ul>
              <li><a href="#">Customer Care</a></li>
              <li><a href="#">FAQS</a></li>
              <li><a href="#">Health history questionnaire</a></li>
              <li><a href="#">Recognition Program</a></li>
            </ul>
          </div>
          <div class="col">
            <h4>Follow Us On</h4>
            <div class="social">
              <a href="#"><i class="bx bxl-facebook"></i></a>
              <a href="#"><i class="bx bxl-instagram"></i></a>
              <a href="#"><i class="bx bxl-twitter"></i></a>
              <a href="#"><i class="bx bxl-youtube"></i></a>
            </div>
          </div>
        </div>
      </div>
    </section>
</body>
</html>