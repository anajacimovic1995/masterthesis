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

import jbr.springmvc.model.Login;
import jbr.springmvc.model.Segment;
import jbr.springmvc.model.User;
import jbr.springmvc.service.SegmentService;
import jbr.springmvc.service.UserService;

@Controller
public class LoginController {

  @Autowired
  UserService userService;
  @Autowired
  SegmentService segService;

  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("login");
    mav.addObject("login", new Login());

    return mav;
  }

  @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
      @ModelAttribute("login") Login login) {
    ModelAndView mav = null;

    User user = userService.validateUser(login);

    if (null != user) {
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
      
    } else {
      mav = new ModelAndView("login");
      mav.addObject("message", "Pogresan unos username-a ili passworda!");
      
    }

    return mav;
  }
  @RequestMapping(value = "/noviCitalac", method = RequestMethod.GET)
  public ModelAndView predvidjanje(HttpServletRequest request) {
	  
	ModelAndView mav = new ModelAndView("welcome2");
	List<Segment> segmenti = segService.getAllSegments();
      List<Segment> segmentiKmeans = new ArrayList<>();
      for (Segment segment : segmenti) {
		if (segment.getTipKlast()==0) {
			
			segmentiKmeans.add(segment);
	   
		}
      }
      mav.addObject("segmenti", segmentiKmeans);
      
      Segment novi = new Segment(0, 0, null, 0, 12, 12, 1, 23000, 2000, 0, 12, -1, 0);
      return mav;
  }

}
