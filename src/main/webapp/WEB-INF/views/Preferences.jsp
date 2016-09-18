<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
    background-color: lightgray;
}

h1 {
    color: black;
    text-align: center;
}

p {
    font-family: verdana;
    font-size: 20px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preferences</title>
</head>
<body>
//${login}
${ctable}
	<form action="formpage1" method="get">
	<h3>User Information:</h3>
First Name:<input type="text" name="name"><br>
Last Name:<input type="text" name="lname"><br>
Username: <input type="text" name="uname"><br>
Password: <input type="text" name="pswd"><br>
Email: <input type="text" name="email"><br>
		 <br> 
		<h3> Food Preferences:</h3>

		<h5>Allergies</h5>
		<input type="checkbox" name="dairy" value="on">Dairy <input
			type="checkbox" name="allergies" value=eggs"on">Eggs <input
			type="checkbox" name="allergies" value="gluten">Gluten <input
			type="checkbox" name="allergies" value="peanut">Peanut <input
			type="checkbox" name="allergies" value="tree nuts">Tree Nuts <input
			type="checkbox" name="allergies" value="sesame">Sesame <input
			type="checkbox" name="allergies" value="seafood">Seafood <input
			type="checkbox" name="allergies" value="shellfish">Shellfish <input
			type="checkbox" name="allergies" value="soy">Soy <input
			type="checkbox" name="allergies"value="sulfite">Sulfite <input 
			type="checkbox" name="allergies" value="wheat" >Wheat
					
		<h5>Diet</h5>
		<input type="checkbox" name="kosher" value="on">Kosher <input
			type="checkbox" name="vegetarian" value="on">Vegetarian <input
			type="checkbox" name="pescatarian" value="on">Pescatarian <input
			type="checkbox" name="vegan" value="on">Vegan

		<h5>Calorie Content</h5>
		<input type="checkbox" name="200 to 300" value="on">200 to 300  
		<input type="checkbox" name="301 to 400" value="on">301 to 400 
		<input type="checkbox" name="401 to 500" value="on">401 to 500
	    <input type="checkbox" name="501 to 600" value="on">501 to 600
        <input type="checkbox" name="601 to 700" value="on">601 to 700
		<input type="checkbox" name="701 to 800" value="on">701 to 800

		 <h5>Carbohydrates</h5>
		 <input type="checkbox" name="15 to 30" value="on">15 to 30
		 <input type="checkbox" name="31 to 45 " value="on">31 to 45
		 <input type="checkbox" name="46 to 55 " value="on">46 to 65
		 <input type="checkbox" name="56 to 65" value="on">56 to 65
		 <input type="checkbox" name="66 to 75" value="on">66 to 75
		 <input type="checkbox" name="76 to 85" value="on">76 to 85 

		
		
		 <h5>Fat</h5>
		<input type="checkbox" name="10 to 15" value="on">10 to 15
	    <input type="checkbox" name="16 to 20" value="on">16 to 20
	    <input type="checkbox" name="21 to 25" value="on">21 to 25 
		 
		<h5>Protein</h5>
		 <input type="checkbox" name="5 to 10" value="on">5 to 10
		 <input type="checkbox" name="11 to 15" value="on">11 to 15
		 <input type="checkbox" name="16 to 20" value="on">16 to 20
		 <input type="checkbox" name="21 to 25" value="on">21 to 25
		 <input type="checkbox" name="26 to 30" value="on">26 to 30
		
		<h5>Cook time</h5>
		<input type="checkbox" name="15-30" value="on">15-30
		 <input type="checkbox" name="30-45" value="on">30-45
		 <input type="checkbox" name="45-60" value="on">45-60
		 <input type="checkbox" name="over an hour" value="on">Over an hour <br>
 	
		 <input type="submit" value="Submit">
		
		

	</form>
</body>
</html>