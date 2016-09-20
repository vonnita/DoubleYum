<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>'
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



<link rel="stylesheet" href="resources/login.css"> 


</head>
<body>
<div class="box">
      <h1 id="logintoregister">Login</h1>
    <div class="group">      
      <input class="inputMaterial" type="text" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Username</label>
      </div>
	  <div class="group">      
      <input class="inputMaterial" type="password" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Password</label>
      </div>
	  <div class="group show">      
      <input class="inputMaterial" type="password" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Confirm Password</label>
      </div>
	  <div class="group show">      
      <input class="inputMaterial" type="text" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Name</label>
      </div>
	  <div class="group show">      
      <input class="inputMaterial" type="text" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Last Name</label>
      </div>
	  <div class="group show">      
      <input class="inputMaterial" type="text" required>
      <span class="highlight"></span>
      <span class="bar"></span>
      <label>Email</label>
      </div>

  <button id="buttonlogintoregister">Login</button>
      <p id="plogintoregister">Not Registered? </p><p id="textchange" onclick="register()"> Sign up!</p>
    </div>


<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="resources/js/login.js"></script>
</body>
</html>