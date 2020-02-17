package jbr.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jbr.springmvc.dao.SegmentDao;
import jbr.springmvc.model.Segment;

@Service
public class SegmentServiceImpl implements SegmentService{

	@Autowired
	public SegmentDao segDao;
	
	@Transactional
	@Override
	public List<Segment> getAllSegments() {
		return segDao.getAllSegments();
	}

}
