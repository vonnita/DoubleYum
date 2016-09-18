package com.DoubleYum.myapp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class Recipes {


	private String title = "";
	private String image = "";
	private int calories = 0;
	private int cookTime = 0;
	
	public Recipes(String title, String image, int calories, int cookTime) {

		this.image = image;
		this.title = title;
		this.calories = calories;
		this.cookTime = cookTime;
	}
	
	
	public int getCalories() {
		return calories;
	}
	public void setCalories(int calories) {
		this.calories = calories;
	}
	public int getCookTime() {
		return cookTime;
	}
	public void setCookTime(int cookTime) {
		this.cookTime = cookTime;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}


	
}
