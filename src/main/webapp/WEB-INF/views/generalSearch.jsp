
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/mainStyle.css">

 
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
			document.getElementById("cooktime").innerHTML=newValue;
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
   	<h2>RESULTS</h2>
   	<h3>${nutrients}</h3>
   	
   <h3> ${recipeTitle}</h3>
   <div class="container">
   <img src=${image}>
   <a href=${sourceUrl}></a>
 	</div>
 	<hr>
			</div>
				<div class="container-fluid text-right">
			<div class="row content">
			<div class="col-sm-2 sidenav">
				<div class="well">
					<p><li><a href="http://localhost:8080/myapp/login"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></li></p>	
				</div>
				<div class="well">
					<p><li><a href=""><span class="glyphicon glyphicon-log-in"></span>
					Sign up</a></li></</p>
				</div>
				<p><h5>Let's get specific!</p></h5>
					<h4>
						<Center>Carbs:</Center>
					</h4>
					<input type="range" name="carbs" value="0" min="0" max="500"
						onchange="carbValue(this.value)" /> <span id="carbs">0</span>
					<script type="text/javascript">
						function carbValue(newValue) {
							document.getElementById("carbs").innerHTML = newValue;
						}
					</script>
					<h4>
						<Center>Fat:</Center>
					</h4>
					<input type="range" name="fat" value="0" min="0" max="1000"
						onchange="fatValue(this.value)" /> <span id="fat">0</span>
					<script type="text/javascript">
						function fatValue(newValue) {
							document.getElementById("fat").innerHTML = newValue;
						}
					</script>
					<h4>
						<Center>Protein:</Center>
					</h4>
					<input type="range" name="protein" value="0" min="0" max="100"
						onchange="proteinValue(this.value)" /> <span id="protein">0</span>
					<script type="text/javascript">
						function proteinValue(newValue) {
							document.getElementById("protein").innerHTML = newValue;
						}
					</script>
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>