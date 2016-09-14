<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style> 
.flex-container {
    display: -webkit-flex;
    display: flex;
    width: 100px;
    height: 150px;
    flex-direction:column;
    }
    .flex-item {
    background-color: light gray;
    width: 100px;
    height: 10px;
    margin: 0px;
}
 </style>
</head>
<body>

<form action="HomePage" method="get">

<h3><center> Select By <select name="selection"><h3>
	<option>Cuisine</option>
	<option>Ingredient</option>
	<option>Cook Time</option>
	<option>Recipe Name</option>
</select><input type="text" name="recipeinput"></center></h3>
<h3><input type="submit" value="Search!"style="visibility: hidden;"/></h3>

  <h4><div class="flex-container">
  <h3><div class="flex-item"><button type="button">Substitutes</button></div></h3><br>  
  <div class="flex-item">Calories</div><br>
 	 <input type="range" name="Calories" min="10" max="5,000">
  	 <input type="submit">
 <div class="flex-item">Time Limit</div><br>
 	<input type="range" name="Time Limit" min="5 minutes" max="1440 minutes">
	<input type="submit"> 
</div></h4>
</form>
${recipeinput}
</body>
</html>