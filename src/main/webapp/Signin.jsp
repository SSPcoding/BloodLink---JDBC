<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="./Signin.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&family=Poppins&display=swap"
      rel="stylesheet"
    />
    	<link rel="stylesheet" href="alert/dist/sweetalert.css">
  </head>
  <body>
  <header>
      <ul class="navbar">
        <li><a href="./admin.jsp">Admin login</a></li>
      </ul>
    </header>
  <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    <div id="grand_div">
      <form id="signin_div" action="./SigninServlet" method="post">
        <p>Login</p>
        <div class="input_field">
          <input type="text" placeholder=" Email"  name="email" id="email" required />
        </div>
        <div class="input_field">
          <input
            type="password"
            placeholder=" Password"
            name="password" 
            id="password"
            required
          />
        </div>
        <div class="input_field">
          <button id="signin">Signin</button>
        </div>
        <div class="link">
          <span
            >Not Registered Yet?<a href="./Signup.jsp" class="sign in">Signup</a>
            </span
            >
        </div>
      </form>
      <div class="image">
        <img src="./images/doc1.png" alt="clip-art" />
      </div>
    </div>
  </body>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status =="failed"){
			swal("Sorry", "Invalid Email ID or Password","error");
		}
	</script>
</html>


