package com.DoubleYum.myapp;

import java.text.DateFormat;
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
			String userinput = request.getParameter("recipeinput");
			String chicken = "chicken";

			// if (userinput != null || !userinput.isEmpty()){

			// }
			HttpResponse<JsonNode> response = Unirest
					.get("https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/search?limitLicense=false&number=5&offset=0&query="
							+ chicken)
					.header("X-Mashape-Key",
							"zuFk4e1CgfmshutJXXAPD9kAGPw6p191u4QjsnW3pJ4YnVGMqe")
					.header("Accept", "application/json").asJson();
			JSONArray updatedResponse = response.getBody().getObject()
					.getJSONArray("results");
			// Object foodImage = updatedResponse.getJSONObject(0).get("image");
			String results = "";
			String picresults = "";
			String urlresults = "";
			for (int i = 0; i < updatedResponse.length(); i++) {
				results += "<br>" + updatedResponse.getJSONObject(i)
				.get("title");
				picresults += "<br>" + updatedResponse.getJSONObject(i).get("image");
				//updatedResponse.getJSONObject(0).get("imageUrls");
				model.addAttribute("pic", picresults);
				model.addAttribute("title", results);
			}

		} catch (Exception e) {
			return "errorpage";
		}
		return "HomePage";

	}

}
