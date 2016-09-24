
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<link rel="stylesheet" href="resources/main.css">

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
	background-color: #ec407a;
	height: 100px;
	
}

.navbar-brand {
	font-size: 50px;
	font-color: white;
}
/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 750px
}

/* Set background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #ffcdd2;
	height: 100%;
	font-size: 17px;
 background: url(https://s-media-cache-ak0.pinimg.com/564x/50/a5/76/50a5766f37b47fe5cf1ed0452ecbc619.jpg) no-repeat center center fixed; 
  webkit-background-size: cover;
  moz-background-size: cover;
  o-background-size: cover;
  background-size: cover; 
	
}
.col-sm-8 text-left input{
font-size: 17px;
}

/* Set background color, text and some padding */
footer {
	background-color: white;
	color: black;
	padding: 15px;
}
img {
	border-radius: circle;
	width: 450px;
	height: 350px;
}
/*if time, automatically adjust for mobile screens*/
  html{
 
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home">DoubleYum</a>
			</h2>
<br>
<br>
			<form action="recipeDetails" method="get">
				<ul class="nav navbar-nav">
					<div class="form-wrapper cf">
  					<input type="text" name="recipeinput">
	  				<button type="submit">Add</button>
				</div>
				
					
				
					</h3>
				</ul>
	
		
	
	</div>
	</nav>
	<div class="container-fluid text-left">
		<div class="row content">
			<div class="col-sm-2 sidenav">
			</div>

		
${test}
<div class="col-sm-8 text-left">
<h3> Food Preferences:</h3>
		<h4><Center>Allergies</Center></h4>
				<input type="checkbox" name="allergens" value="Dairy">Dairy      
				<input type="checkbox" name="allergens" value="Egg">Egg       
				<input type="checkbox" name="allergens" value="Gluten">Gluten<br>
				<input type="checkbox" name="allergens" value="Peanut">Peanut
				<input type="checkbox" name="allergens" value="Sesame">Sesame
				<input type="checkbox" name="allergens" value="Seafood">Seafood<br>
				<input type="checkbox" name="allergens" value="Shellfish">Shellfish
				<input type="checkbox" name="allergens" value="Soy">Soy
				<input type="checkbox" name="allergens" value="Sulfite">Sulfite<br>
				<input type="checkbox" name="allergens" value="Tree Nut">Tree
				Nut <input type="checkbox" name="allergens" value="Wheat">Wheat
				<h4>
					<Center>Diet</Center>
				</h4>
				<input type="radio" name="diet" value="Pescetarian">
				Pescetarian<br> <input type="radio" name="diet" value="Lacto">
				Lacto Vegetarian<br> <input type="radio" name="diet"
					value="Ovo"> Oto Vegetarian<br> <input type="radio"
					name="diet" value="Vegan"> Vegan<br> <input
					type="radio" name="diet" value="Vegetarian"> Vegetarian
				
<h4>
					<Center>Cook Time</Center>
				</h4>
				<h4><i><right><input type="range" name="cooktime" value="0" min="0" max="120"
					onchange="showValue(this.value)" /> <span id="cooktime">0</span>    Minutes</right></i></h4>
				<script type="text/javascript">
					function showValue(newValue) {
						document.getElementById("cooktime").innerHTML = newValue;
					}
				</script>
				<h4>
					<Center>Calories:</Center>
				</h4>
				<h4><i><right><input type="range" name="calories" value="0" min="0" max="3000"
					onchange="calValue(this.value)" /> <span id="calories">0</span>    Cals</right></i></h4>
				<script type="text/javascript">
					function calValue(newValue) {
						document.getElementById("calories").innerHTML = newValue;
					}
					</script>
		 	<h4>
		 	<Center>Carbs:</Center>
				</h4>
				<h4><i><right><input type="range" name="carbs" value="0" min="0" max="250"
					onchange="carbValue(this.value)"/> <span id="carbs">0</span>    Grams</right></i></h4>
				<script type="text/javascript">
					function carbValue(newValue) {
						document.getElementById("carbs").innerHTML = newValue;
					}
				</script>
				<h4>
		
				<h4>
					<Center>Fat:</Center>
				</h4>
			<h4><i><right><input type="range" name="fat" value="0" min="0" max="110"
					onchange="fatValue(this.value)" /> <span id="fat">0</span>    Grams</right></i></h4>
				<script type="text/javascript">
					function fatValue(newValue) {
						document.getElementById("fat").innerHTML = newValue;
					}
				</script>
				<h4>
		<h4>
					<Center>Protein:</Center>
				</h4>
				<h4><i><input type="range" name="protein" value="0" min="0" max="150"
					onchange="proteinValue(this.value)" /> <span id="protein">0</span>    Grams</i></h4>
				<script type="text/javascript">
					function proteinValue(newValue) {
						document.getElementById("protein").innerHTML = newValue;
					}
				</script>
				</div>
		
<!--  <input type="submit" value="Submit"></p> -->
	</form>
	<div class="container-fluid text-left">
			<div class="row content">
			<div class="col-sm-2 sidenav">
			</div>
			</div>
			</div>
</body>
</html>