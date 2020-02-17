package jbr.springmvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import jbr.springmvc.model.Segment;

@Service
public interface SegmentService {
	
	public List<Segment> getAllSegments();
}
