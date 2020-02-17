package jbr.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jbr.springmvc.model.Segment;
import jbr.springmvc.model.User;
import jbr.springmvc.service.SegmentService;
import jbr.springmvc.service.UserService;

@Controller
public class RegistrationController {
  @Autowired
  public UserService userService;
  @Autowired
  SegmentService segService;

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("register");
    mav.addObject("user", new User());

    return mav;
  }

  @RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
  public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response,
      @ModelAttribute("user") User user) {
	ModelAndView mav = null;
	
    userService.register(user);
    
    List<Segment> segmenti = segService.getAllSegments();
    List<Segment> segmentiKmeans = new ArrayList<>();
    for (Segment segment : segmenti) {
		if (segment.getTipKlast()==0) {
			segmentiKmeans.add(segment);
		}
    }
    
    mav = new ModelAndView("welcome");
    mav.addObject("ime", user.getIme());
    mav.addObject("segmenti", segmentiKmeans);

    return mav;
  }
}
