package com.niit.phishing;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class homeController {
	
	@RequestMapping("/")
	public String HomePage(Model m)
	{
		return "index";
	}
	@RequestMapping("adminlogin")
	public String AdminPage()
	{
		return "adminlogin";
	}

}
