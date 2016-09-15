<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preferences</title>
</head>
<body>
${login}
	<form action="formpage" method="get">
	<h3>User Information:</h3>
First Name:<input type="text" name="name"><br>
Last Name:<input type="text" name="lname"><br>
Username: <input type="text" name="uname"><br>
Password: <input type="text" name="pswd"><br>
Email: <input type="text" name="email"><br>
		 <br> 
		<h3> Food Preferences:</h3>

		<h5>Allergies</h5>
		<input type="checkbox" name="milk" value="on">Milk <input
			type="checkbox" name="eggs" value="on">Eggs <input
			type="checkbox" name="fish" value="on">Fish <input
			type="checkbox" name="shellfish" value="on">Shellfish <input
			type="checkbox" name="nuts" value="on">Nuts <input
			type="checkbox" name="soybeans" value="on">Soybeans <input
			type="checkbox" name="citrus" value="on">Citrus

		<h5>Diet</h5>
		<input type="checkbox" name="kosher" value="on">Kosher <input
			type="checkbox" name="vegetarian" value="on">Vegetarian <input
			type="checkbox" name="pescatarian" value="on">Pescatarian <input
			type="checkbox" name="vegan" value="on">Vegan

		<h5>Calorie Content</h5>
		<input type="checkbox" name="200 to 300 calories" value="on">200 to 300  
		Calories <input type="checkbox" name="301 to 400 calories" value="on">301 to 400 
		Calories<input type="checkbox" name="401 to 500  calories" value="on">401 to 500
	    Calories<input type="checkbox" name="501 to 600 calories" value="on">501 to 600
        Calories <input type="checkbox" name="601 to 700 calories" value="on">601 to 700
		Calories <input type="checkbox" name="701 to 800 calories" value="on">701 to 800 Calories

		 <h5>Carbohydrates</h5>
		 <input type="checkbox" name="15 to 30 carbs" value="on">15 to 30
		 Carbs <input type="checkbox" name="31 to 45 " value="on">31 to 45
		 Carbs <input type="checkbox" name="46 to 55 " value="on">46 to 65
		Carbs <input type="checkbox" name="56 to 65" value="on">56 to 65
		 Carbs <input type="checkbox" name="66 to 75" value="on">66 to 75
		 Carbs <input type="checkbox" name="76 to 85" value="on">76 to 85 Carbs

		
		
		 <h5>Fat</h5>
		<input type="checkbox" name="10 to 15 grams" value="on">10 to 15
		Grams <input type="checkbox" name="16 to 20 grams" value="on">16 to 20
		Grams <input type="checkbox" name="21 to 25 grams" value="on">21 to 25 Grams
		 
		<h5>Protein</h5>
		 <input type="checkbox" name="5 to 10 grams" value="on">5 to 10
		Grams <input type="checkbox" name="11 to 15 grams" value="on">11 to 15
		Grams <input type="checkbox" name="16 to 20 grams" value="on">16 to 20
		Grams <input type="checkbox" name="21 to 25 grams" value="on">21 to 25
		Grams <input type="checkbox" name="26 to 30 grams" value="on">26 to 30 Grams
		
		<h5>Cook time</h5>
		<input type="checkbox" name="15-30 minutes" value="on">15-30
		Minutes <input type="checkbox" name="30-45 minitues" value="on">30-45
		Minutes <input type="checkbox" name="45-60 minutes" value="on">45-60
		Minutes <input type="checkbox" name="over an hour" value="on">Over an hour <br>
		
		 <input type="submit" value="Submit">
		
		

	</form>
</body>
</html>