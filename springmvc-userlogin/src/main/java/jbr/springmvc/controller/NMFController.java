package jbr.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import jbr.springmvc.model.Segment;
import jbr.springmvc.model.User;
import jbr.springmvc.service.SegmentService;

@Controller
public class NMFController {

	  @Autowired
	  SegmentService segService;
	  
	  @RequestMapping(value = "/nmf", method = RequestMethod.GET)
	  public ModelAndView otvoriNMF(HttpServletRequest request) {
		  
		ModelAndView mav = new ModelAndView("nmf");
		List<Segment> segmenti = segService.getAllSegments();
	      List<Segment> segmentiNMF = new ArrayList<>();
	      for (Segment segment : segmenti) {
			if (segment.getTipKlast()==1) {
				
				segmentiNMF.add(segment);
		   
			}
	      }
	      mav.addObject("segmenti", segmentiNMF);
	      return mav;
	  }
	  @RequestMapping(value = "/welcome", method = RequestMethod.GET)
	  public ModelAndView vratiWelcome(HttpServletRequest request) {
		  
		ModelAndView mav = new ModelAndView("welcome2");
		List<Segment> segmenti = segService.getAllSegments();
	      List<Segment> segmentiKmeans = new ArrayList<>();
	      for (Segment segment : segmenti) {
			if (segment.getTipKlast()==0) {
				
				segmentiKmeans.add(segment);
		   
			}
	      }
	      mav.addObject("segmenti", segmentiKmeans);
	      return mav;
	  }
}
