
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
    .navbar-brand {
      font-size: 50px;
    
    
    }
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 600px}
    
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
      <a class="navbar-brand" href="#">DoubleYum</a></h2>
   	
      <form action="homepage" method="get">
     <ul class="nav navbar-nav"> 
		<h3>Search<input type="text" name="recipeinput"></center></h3> 
		<h3><input type="submit" value="Search!"style="visibility: hidden;"/></h3>	
      </ul> 
      
      </div>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        
        
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid text-left">
  <div class="row content">
    <div class="col-sm-2 sidenav"> 
    <h4><Center>Allergens</Center></h4>
<input type="checkbox" name="allergens" value="Dairy">Dairy<br>
<input type="checkbox" name="allergens" value="Egg">Egg<br>
<input type="checkbox" name="allergens" value="Gluten">Gluten<br>
<input type="checkbox" name="allergens" value="Peanut">Peanut<br>
<input type="checkbox" name="allergens" value="Sesame">Sesame<br>
<input type="checkbox" name="allergens" value="Seafood">Seafood<br>
<input type="checkbox" name="allergens" value="Shellfish">Shellfish<br>
<input type="checkbox" name="allergens" value="Soy">Soy<br>
<input type="checkbox" name="allergens" value="Sulfite">Sulfite<br>
<input type="checkbox" name="allergens" value="Tree Nut">Tree Nut<br>
<input type="checkbox" name="allergens" value="Wheat">Wheat
	<h4><Center>Diet</Center></h4>
<input type="radio" name="diet" value="Pescetarian"> Pescetarian<br>
<input type="radio" name="diet" value="Lacto"> Lacto Vegetarian<br>
<input type="radio" name="diet" value="Ovo"> Ovo Vegetarian<br>
<input type="radio" name="diet" value="Vegan"> Vegan<br>
<input type="radio" name="diet" value="Vegetarian"> Vegetarian<input type = "submit" value ="Submit"style="visibility: hidden;">
  	<h4><Center>Cook Time</Center></h4>
<input type="range" name="cooktime" value="0" min="0" max="360"onchange="showValue(this.value)"/>
<span id="range">0</span>
			<script type="text/javascript">
			function showValue(newValue)
			{
			document.getElementById("range").innerHTML=newValue;
			}
			</script>

    <h4><Center>Calories:</Center></h4>
<input type="range" name="calories" value="0" min="10" max="5000"onchange="calValue(this.value)"/>
<span id="calories">0</span>
			<script type="text/javascript">
			function calValue(newValue)
			{
			document.getElementById("calories").innerHTML=newValue;
			}
			</script>
       </form>	
    </div>
    <div class="col-sm-8 text-left">
   	<h3>${nutrients}</h3>
   <h3> ${recipeTitle}</h3>
	<img src=${recipePic}></button></a>
 
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