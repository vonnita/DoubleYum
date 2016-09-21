package com.DoubleYum.myapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 * 
	 * 
	 * 
	
	 */

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getWeather(HttpServletRequest request, Model model) {
		try {

			HttpResponse<JsonNode> response = Unirest
					.get("https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/random?limitLicense=false&number=1")
					.header("X-Mashape-Key",
							"zDMVRFkyfVmshyOwXP2GcxJx0cOZp13ZdT9jsnY2JdFip6csGz")
					.header("Accept", "application/json").asJson();

			JSONArray updatedResponse = response.getBody().getObject()
					.getJSONArray("recipes");
			Object foodImage = updatedResponse.getJSONObject(0).get("image");
			Object foodTitle = updatedResponse.getJSONObject(0).get("title");
			Object instructions = updatedResponse.getJSONObject(0).get(
					"instructions");
			Object sourceUrl = updatedResponse.getJSONObject(0)
					.get("sourceUrl");
			model.addAttribute("foodTitle", foodTitle);
			model.addAttribute("foodImage", foodImage);
			model.addAttribute("instructions", instructions);
			model.addAttribute("sourceUrl", sourceUrl);
		} catch (Exception e) {
			return "errorpage";
		}
		return "HomePage";

	}

	@RequestMapping(value = "recipeDetails", method = RequestMethod.GET)
	public String getUserPreference(HttpServletRequest request, Model model) {
		try {
			String searchQuery = request.getParameter("recipeinput");
			String updatedQuery = searchQuery.replace(" ", "+");
			
			String diet = request.getParameter("diet");
			String[] allergens = request.getParameterValues("allergens");
			String apiStr1 = "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?";
			String apiStr2 = "limitLicense=false&number=50&offset=0&query=";

			if (diet != null && !diet.equals("")) {
				apiStr1 = apiStr1 + "diet=" + diet + "&";
			}
			if (allergens != null) {
				apiStr1 = apiStr1 + "intolerances=" + allergens[0];
				if (allergens.length > 1) {
					for (int i = 1; i < allergens.length - 1; i++) {
						apiStr1 = apiStr1 + "%2C" + allergens[i];
					}
					apiStr1 = apiStr1 + "%2C" + allergens[allergens.length - 1]
							+ "&";
				} else {
					apiStr1 = apiStr1 + "&";
				}
			}

			apiStr1 = apiStr1 + apiStr2 + updatedQuery;
			HttpResponse<JsonNode> response = Unirest
					.get(apiStr1)
					.header("X-Mashape-Key",
							"zuFk4e1CgfmshutJXXAPD9kAGPw6p191u4QjsnW3pJ4YnVGMqe")
					.header("Accept", "application/json").asJson();
			
			String cookTime = request.getParameter("cooktime");
			if (cookTime.equals("0")){
				cookTime = "360";
			}
			String calories = request.getParameter("calories");
			if (calories.equals("0")){
				calories = "3000";
			}
			String carbs = request.getParameter("carbs");
			if (carbs.equals("0")){
				carbs = "500";
			}
			String fat = request.getParameter("fat");
			if (fat.equals("0")){
				fat = "1000";
			}
			String protein = request.getParameter("protein");
			if (protein.equals("0")){
				protein = "100";
			}
		
			int cookTimeDouble = Integer.parseInt(cookTime);
			double caloriesDouble = Double.parseDouble(calories);
			double carbsDouble = Double.parseDouble(carbs);
			double fatDouble = Double.parseDouble(fat);
			double proteinDouble = Double.parseDouble(protein);

			JSONArray updatedResponse = response.getBody().getObject()
					.getJSONArray("results");

			// add ids of searched values into arrayList
			ArrayList<String> ids = new ArrayList<String>();
			for (int i = 0; i < updatedResponse.length(); i++) {
				ids.add(updatedResponse.getJSONObject(i).get("id").toString());

			}
			// loop thru ID numbers and send them to the new API
			
			ArrayList<Recipes> recipeInput = new ArrayList<Recipes>();
			for (int i = 0; i < ids.size(); i++) {
				//
				HttpResponse<JsonNode> response2 = Unirest
						.get("https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/"
								+ ids.get(i)
								+ "/information?includeNutrition=true")
						.header("X-Mashape-Key",
								"zuFk4e1CgfmshutJXXAPD9kAGPw6p191u4QjsnW3pJ4YnVGMqe")
						.header("Accept", "application/json").asJson();
				
				Double recCal = (Double) response2.getBody().getObject()
						.getJSONObject("nutrition").getJSONArray("nutrients")
						.getJSONObject(0).get("amount");
				Double recFat = (Double) response2.getBody().getObject()
						.getJSONObject("nutrition").getJSONArray("nutrients")
						.getJSONObject(1).get("amount");
				Double recCarbs = (Double) response2.getBody().getObject()
						.getJSONObject("nutrition").getJSONArray("nutrients")
						.getJSONObject(3).get("amount");
				Double recProtein = (Double) response2.getBody().getObject()
						.getJSONObject("nutrition").getJSONArray("nutrients")
						.getJSONObject(7).get("amount");
			int recCookTime =
					(Integer)response2.getBody().getObject().get("readyInMinutes");
				//
				if (recCal <= caloriesDouble && recFat <= fatDouble
						&& recCarbs <= carbsDouble
						&& recProtein <= proteinDouble && recCookTime <= cookTimeDouble) {

					recipeInput.add(new Recipes(updatedResponse
							.getJSONObject(i).get("title").toString(),
							(updatedResponse.getJSONObject(i).get("image")
									.toString())));

				}
			}

			// array for results items

			String listImage = "";
			String listTitle = "";
			String listSourceUrl ="";

			for (int i = 0; i < recipeInput.size(); i++) {

				listImage += "<img src=\"https://spoonacular.com/recipeImages/" + recipeInput.get(i).getImage() + "\">";
				listTitle += "<br>" + recipeInput.get(i).getTitle();
				listSourceUrl += "<br>" + "<a href=\"http://" + recipeInput.get(i).getSourceUrl() + "\">";

			}
			model.addAttribute("sourceUrl", listSourceUrl);
			model.addAttribute("image", listImage);
			model.addAttribute("recipeTitle", listTitle);
			model.addAttribute("counter", recipeInput.size());
			model.addAttribute("query", searchQuery);
		} catch (Exception e) {
			return "errorpage";
		}
		return "generalSearch";

	}

	@RequestMapping(value = "preferences", method = RequestMethod.GET)
	public String userPreference() {
		return "Preferences";
	}

	@RequestMapping(value = "login", method = RequestMethod.GET)
	public String userLogin() {
		return "login";
	}

	@RequestMapping(value = "formpage1", method = RequestMethod.GET)
	public String listAllCustomers(HttpServletRequest request, Model model,
			Object Allergies) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection cnn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/double_yum", "root", "zena09");

			String fname = request.getParameter("name");
			String lname = request.getParameter("lname");
			String email = request.getParameter("email");
			String uname = request.getParameter("uname");
			String pswd = request.getParameter("pswd");

			String insertCustInfoSQL = "";

			insertCustInfoSQL = "Insert into customer_info values(' " + fname
					+ "','" + lname + "','" + email + "','" + uname + "','"
					+ pswd + "');";

			Statement insertStatement = cnn.createStatement();
			insertStatement.executeUpdate(insertCustInfoSQL);
			String calories = request.getParameter("calories");
			String cookTime = request.getParameter("cooktime");
			String carbs = request.getParameter("carbs");
			String diet = request.getParameter("diet");
			String fat = request.getParameter("fat");
			String protein = request.getParameter("protein");

			String[] allergens = request.getParameterValues("allergies");

			PreparedStatement preparedStatement = cnn
					.prepareStatement("Insert into customer_preference values(?,?,?,?,?,?,?,?)");
			preparedStatement.setString(1, uname);// 2 set the values

			String allAllergens = "";
			if (allergens != null) {
				for (int i = 0; i < allergens.length; i++) {
					allAllergens = allAllergens + allergens[i] + ",";

				}
			}
			preparedStatement.setString(2, allAllergens);
			preparedStatement.setString(3, calories);
			preparedStatement.setString(4, cookTime);
			preparedStatement.setString(5, carbs);
			preparedStatement.setString(6, diet);
			preparedStatement.setString(7, fat);
			preparedStatement.setString(8, protein);

			preparedStatement.executeUpdate();

			model.addAttribute("ctable", "added new row");

		} catch (Exception e) {

			System.out.println(e);
			// e.printStackTrace();
			return "errorpage";

		}
		return "Preferences";

	}	

}