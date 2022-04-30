package com.campus.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.campus.myapp.service.DataService;

/*@Controller
public class HomeController {
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home() {
      return "home";
   }
}*/



@RestController
public class HomeController {
	@Autowired
	DataService service;
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("lst", service.dataSelectAll());
		
		mav.setViewName("home");
		return mav;
	}
	
	@GetMapping("/introduce")
	public ModelAndView introduce() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("introduce");
		return mav;
	}
	
}