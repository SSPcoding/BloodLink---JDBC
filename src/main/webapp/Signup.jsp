<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign-Up</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&family=Poppins&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="./Signup.css" />
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    
  </head>
  <body>
    <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
    <div id="grand_div">
      <form class="signup_div" id="formsignup" method="post" action="./SignupServlet">
        <header>Sign Up</header>
        <div class="input_field">
          <input type="text" placeholder=" Name" id="name" name="name"/>
          <div class="error"></div>
        </div>
        <!-- <div class="input_field">
          <input type="number" placeholder=" Mobile" id="mobile" />
          <div class="error"></div>
        </div> -->
        <div class="input_field">
          <input type="text" placeholder=" Email" id="email" name="email" />
          <div class="error"></div>
        </div>
        <div class="input_field">
          <input type="password" placeholder="Password" id="password" name="pass" autocomplete="on"/>
          <div class="error"></div>
        </div>
        <div class="input_field">
          <button type="submit" id="signup">Create Account</button>
        </div>
        <div class="link">
          <span>Already have an account?<a href="./Signin.jsp">Login</a></span>
        </div>
      </form>
      <div class="image">
        <img src="./images/doc2.jpg" alt="clip-art" />
      </div>
    </div>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status =="success"){
			swal("Congrats", "Account Created Successfully","success");
		}
		else if(status =="failed"){
		swal("Sorry","Something Went Wrong","error");
		}
	</script>
	<script src="./Signup.js"></script>
  </body>
</html>
