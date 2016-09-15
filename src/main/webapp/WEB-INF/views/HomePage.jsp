
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Insert title here</title>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
   
      margin-bottom: 0;
      border-radius: 0;
      background-color: #ec407a;
    }
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #ffcdd2;
      height: 100%;
    }
  
    
    /* Set background color, text and some padding */
    footer {
      background-color: white;
      color: black;
      padding: 15px;
    }
   /*if time, automatically adjust for mobile screens*/

}
 </style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">DoubleYum</a>
   	
      <form action="recipe" method="get">
      <ul class="nav navbar-nav"> 
		<h3> Select By <select name="selection"></h3>
			<option>Cuisine</option>
			<option>Ingredient</option>
			<option>Recipe Name</option>
			</select><input type="text" name="recipeinput"></center></h3> 
			<h3><input type="submit" value="Search!"style="visibility: hidden;"/></h3>
      </ul>
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#"><button type="button">Substitutes</button></a></p>
      <p><a href="#">Calories</a></p>
      <p><a href="#">Time Limit</a></p>		
    </div>
    <div class="col-sm-8 text-left">
      <h1>Recipe of the Day</h1>
      <h3>${foodTitle}</h3>
      <a href = ${sourceUrl}><button  type ="button" ><img src=${foodImage} ></button>  </a>

      <hr>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p></p>
      </div>
      <div class="well">
        <p></p>
      </div>
    </div>
  </div>
</div>


<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
