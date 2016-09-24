
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Latest compiled and minified CSS -->


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>DoubleYum</title>

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
      <a class="navbar-brand" href="home">DoubleYum</a></h2>
   	
    <br>
<br>
			<form action="recipeDetails" method="get">
				<ul class="nav navbar-nav">
					<div class="form-wrapper cf">
  					<input type="text" name="recipeinput" placeholder="Search here..." required>
	  				<button type="submit">Search</button>
				</div>
					
				
					</h3>
				</ul>
		</div>
      <ul class="nav navbar-nav navbar-right">
	
					
		</ul>
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
				<input type="range" name="cooktime" value="0" min="0" max="120"onchange="showValue(this.value)"/>
				<span id="cooktime">0</span>  Minutes
			<script type="text/javascript">
			function showValue(newValue)
			{
			document.getElementById("cooktime").innerHTML=newValue;
			}
			</script>
			    <h4><Center>Calories:</Center></h4>
			<input type="range" name="calories" value="0" min="10" max="3000"onchange="calValue(this.value)"/>
				<span id="calories">0</span>  Calories
			<script type="text/javascript">
			function calValue(newValue)
			{
			document.getElementById("calories").innerHTML=newValue;
			}
			</script>
			
      	
    </div>
    <div class="col-sm-8 text-center">
   	<h2>${counter} results for "${query}"</h2>

 <div class="container" id="aboutimgcenter">
 <div class = class="img-responsive">
 <c:forEach var="recipe" items = "${recipeInput}">
 <c:out value="${recipe.title}"/>
  <center><a href ="${recipe.sourceUrl}"<button type="button">
  <img src="https://spoonacular.com/recipeImages/${recipe.image}" ></button></a></center>

  </c:forEach>

 <p>

 <%--  <c:if test="${(recipeInput.length-1) mod 3 eq 0}"> --%>
<%--  </c:if> --%>


  
 	</div>
 	<hr>
 	</div>
			</div>
				<div class="container-fluid text-left">
			<div class="row content">
			<div class="col-sm-2 sidenav">
				<h4><p><a href="login"><span class="glyphicon glyphicon-log-in"></span>
					Login</a></p></h4>	
				<p><h5>Let's get specific!</p></h5>
					<h4>
					
						<Center>Carbs:</Center>
					</h4>
					<input type="range" name="carbs" value="0" min="0" max="250"
						onchange="carbValue(this.value)" /> <span id="carbs">0</span> Grams
					<script type="text/javascript">
						function carbValue(newValue) {
							document.getElementById("carbs").innerHTML = newValue;
						}
					</script>
					<h4>
						<Center>Fat:</Center>
					</h4>
					<input type="range" name="fat" value="0" min="0" max="110"
						onchange="fatValue(this.value)"/><span id="fat">0</span>  Grams
					<script type="text/javascript">
						function fatValue(newValue) {
							document.getElementById("fat").innerHTML = newValue;
						}
					</script>
					<h4>
						<Center>Protein:</Center>
					</h4>
					<input type="range" name="protein" value="0" min="0" max="150"
						onchange="proteinValue(this.value)" /> <span id="protein">0</span>  Grams
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
	</body>
	</html>