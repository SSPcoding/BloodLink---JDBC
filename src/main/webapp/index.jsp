<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Blood Bucket</title>
    <link rel="stylesheet" href="./index.css" />
    <link
      rel="stylesheet"
      href="https://unpkg.com/boxicons@latest/css/boxicons.min.css"
    />
    <% if(session.getAttribute("name")==null){ %>
    <style>
    	.btn, .hide{
    	display:none;
    	}
    </style>
      <% }else{%>
      <style>
    	.toggle{
    	display:none;
    	}
    </style>
    <%}%>
  </head>
  <body>
    <header>
      <a href="#" class="logo">Blood Bucket</a>
      <div class="bx bx-menu" id="menu-icon"></div>

      <ul class="navbar">
        <li><a href="#home">Home</a></li>
        <li><a href="#about">About</a></li>
        <li><a href="#cta">Contact</a></li>
        <li><a href="./Signin.jsp" class="toggle">Login</a></li>
        <li><a href="./Signup.jsp">Signup</a></li>
        <li><a href="./LogoutServlet" class="hide">Logout</a></li>
      </ul>
    </header>


    <section class="home" id="home">
      <div class="home-text">
        <h4>Welcome To</h4>
        <h1>Blood Bucket</h1>
        <p>
          Our mission is to bridge the gap between blood donors and recipients,
          providing a seamless and efficient experience for both parties. You
          can trust us, we provide the best service...
        </p>
        <br />
        <a href="./donate_form.html" class="btn" target="_blank" >Donate Blood</a>
        <a href="./blood_requisition.html" class="btn" target="_blank" >Seek Blood</a>
      </div>
      <div class="home-img">
        <img src="./images/home_img.png" />
      </div>
    </section>

   
    <section class="about" id="about">
      <div class="about-img">
        <img src="./images/about.png" alt="logo" />
      </div>

      <div class="about-text">
        <span>About Us</span>
        <h2>We Care For Your <br />Loved Ones</h2>
        <p>
          We strive to create a community that fosters empathy, support, and
          solidarity among individuals who are committed to making a difference.
          Whether you're a potential donor or someone in need of blood, we are
          here to assist you every step of the way.
        </p>
        <a href="#" class="btn"> Read More</a>
      </div>
    </section>


    <section class="blog" id="blog">
      <div class="heading">
        <span>Blogs</span>
        <h2>Featured blogs and Posts</h2>
      </div>

      <div class="blog-container">
        <div class="box">
          <div class="box-img">
            <img src="./images/blog1.png" alt="" />
          </div>
          <h2>What Is a Normal Platelet Count?</h2>
          <h3>
            Platelets are a vital part of your blood. They form clots to help
            stop bleeding. So just how many platelets should be traveling
            through your bloodstream?
          </h3>
          <span>Learn more</span>
          <i class="bx bx-right-arrow-circle"></i>
        </div>
        <div class="box">
          <div class="box-img">
            <img src="./images/blog2.png" alt="" />
          </div>
          <h2>Honoring Local First Responders</h2>
          <h3>
            Every summer, Vitality joins forces with the first responders in our
            local communities to donate blood and save lives at numerous blood
            drives.
          </h3>
          <span>Learn more</span>
          <i class="bx bx-right-arrow-circle"></i>
        </div>
        <div class="box">
          <div class="box-img"><img src="./images/blog3.png" alt="" /></div>
          <h2>Donating Blood: 5 Nutrition Tips</h2>
          <h3>
            TKeeping your nutrition top of mind is key before and after donating
            blood. Try out these five easy nutrition tips for your next blood
            donation
          </h3>
          <span>Learn more</span>
          <i class="bx bx-right-arrow-circle"></i>
        </div>
      </div>
    </section>

    
    
    <section class="services" id="services">
      <div class="heading">
        <span>Services</span>
        <h2>Our Other Services</h2>
      </div>
      <div class="service-container">
        <div class="s-box">
          <img src="./images/services1.png" />
          <h3>Pre Book Blood</h3>
          <p>Book Blood For An upcoming Date</p>
        </div>

        <div class="s-box">
          <img src="./images/services2.jpg" />
          <h3>Call Ambulance</h3>
          <p>Get our ambulance service</p>
        </div>

        <div class="s-box">
          <img src="./images/service3.png" />
          <h3>Why Donate ?</h3>
          <p>Awarness on blood donation</p>
        </div>
      </div>
    </section>


    <section class="cta" id="cta">
      <h2>Have any Queries?</h2>
      <a href="#" class="btn"> Let's talk</a>
      <p class="toggle">You need to login First</p>
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

    <script src="./index.js"></script>
  </body>
</html>
