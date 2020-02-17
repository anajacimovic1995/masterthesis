package jbr.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jbr.springmvc.model.Segment;
import jbr.springmvc.model.User;

@Controller
public class NMFController {

	  @RequestMapping(value = "/nmf", method = RequestMethod.GET)
	  public ModelAndView otvoriNMF(HttpServletRequest request) {
		  
		ModelAndView mav = new ModelAndView("nmf");
	    return mav;
	  }
}
