package com.med.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.med.entity.Admin;

import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class HomeController {
  @RequestMapping("/")
  public String displayWelcomePage(){
  	return "welcome" ;
  }
  @RequestMapping("/success")
  public String login(@ModelAttribute("admin") Admin adm) {
	if((adm.getUsername().equals("qpharma")) &&(adm.getPassword().equals("qpharma123")))
      {
    	  return "redirect:/medicine/list";
      }
    else
      {
    	  return "login-failed";
      }
	  
  }
}
