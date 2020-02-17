package jbr.springmvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import jbr.springmvc.model.Segment;

@Repository
public interface SegmentDao {
	
	public List<Segment> getAllSegments();
	
}
