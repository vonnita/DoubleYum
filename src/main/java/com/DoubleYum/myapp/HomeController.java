package com.DoubleYum.myapp;

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
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "homepage", method = RequestMethod.GET)
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
			String chicken = "chicken";
			String diet = request.getParameter("diet");
			String[] allergens = request.getParameterValues("allergens");
			String apiStr1 = "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?";
			String apiStr2 = "limitLicense=false&number=5&offset=0&query=";

			if (diet != null && !diet.equals("")) {
				apiStr1 = apiStr1 + "diet=" + diet + "&";
			}
			if (allergens != null) {
				apiStr1 = apiStr1 + "intolerances=" + allergens[0];
				if (allergens.length > 1) {
					for (int i = 1; i < allergens.length - 1; i++) {
						apiStr1 = apiStr1 + "%2C" + allergens[i];
					}
					apiStr1 = apiStr1 + allergens[allergens.length - 1] + "&";
				} else {
					apiStr1 = apiStr1 + "&";
				}
			}

			apiStr1 = apiStr1 + apiStr2 + searchQuery;
			HttpResponse<JsonNode> response = Unirest
					.get(apiStr1)
					.header("X-Mashape-Key",
							"zuFk4e1CgfmshutJXXAPD9kAGPw6p191u4QjsnW3pJ4YnVGMqe")
					.header("Accept", "application/json").asJson();

			String calories = request.getParameter("calories");
			String carbs = request.getParameter("carbs");
			String fat = request.getParameter("fat");
			String protein = request.getParameter("protein");
			String nutrientsApi = "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByNutrients?";
			String nutrientsApi2 = "mincalories=0&minCarbs=0&minfat=0&minProtein=0";
			if (calories != null && !calories.equals("0")){
				nutrientsApi = nutrientsApi + "maxcalories=" + calories + "&";
			}
			if (carbs != null){
				nutrientsApi = nutrientsApi + "maxcarbs=" + carbs + "&";
			}
			if (fat != null){
				nutrientsApi = nutrientsApi + "maxfat=" + fat + "&";
			}
			if (protein != null){
				nutrientsApi = nutrientsApi + "maxprotein=" + protein + "&";
			}
			nutrientsApi = nutrientsApi + nutrientsApi2;
			
			HttpResponse<JsonNode> response1 = Unirest.get(nutrientsApi)
			.header("X-Mashape-Key", "zuFk4e1CgfmshutJXXAPD9kAGPw6p191u4QjsnW3pJ4YnVGMqe")
			.header("Accept", "application/json")
			.asJson();
	
			/*HttpResponse<JsonNode> response = Unirest.get("https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/findByNutrients?maxcalories=250&maxcarbs=100&maxfat=20&maxprotein=100&mincalories=0&minCarbs=0&minfat=0&minProtein=0")
					.header("X-Mashape-Key", "zuFk4e1CgfmshutJXXAPD9kAGPw6p191u4QjsnW3pJ4YnVGMqe")
					.header("Accept", "application/json")
					.asJson();*/
			
			/*
			 * HttpResponse<JsonNode> response = Unirest .get(
			 * "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?limitLicense=false&number=5&offset=0&query="
			 * + searchQuery) .header("X-Mashape-Key",
			 * "zuFk4e1CgfmshutJXXAPD9kAGPw6p191u4QjsnW3pJ4YnVGMqe")
			 * .header("Accept", "application/json").asJson();
			 */
			// HttpResponse<JsonNode> response = Unirest
			// .get("https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?diet=vegan&excludeIngredients=beef&intolerances=wheat&limitLicense=false&number=10&offset=0&query=chinese&type=main+course")
			// .header("X-Mashape-Key",
			// "UCxeqFVbwImshOjeqyDm6MCTzENOp13J5pDjsncVScogc8fWaD")
			// .header("Accept", "application/json")
			// .asJson();

			JSONArray updatedResponse = response.getBody().getObject()
					.getJSONArray("results");
			// array for results items
			ArrayList<Recipes> recipeInput = new ArrayList();
			for (int i = 0; i < updatedResponse.length(); i++) {

				recipeInput.add(new
				 Recipes(updatedResponse.getJSONObject(i).get("title").toString(),(updatedResponse.getJSONObject(i).get("image").toString())));

				// updatedResponse.getJSONObject(0).get("imageUrls");

			}
			//model.addAttribute("nutrients", response1.getBody());
			model.addAttribute("recipeTitle", recipeInput.get(0).getTitle());
			model.addAttribute("recipePic", recipeInput.get(0).getImage());

		} catch (Exception e) {
			return "errorpage";
		}
		return "HomePage";

	}

}
