package jbr.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import jbr.springmvc.model.Segment;
import jbr.springmvc.model.User;

@Repository
public class SegmentDaoImpl implements SegmentDao{

	  @Autowired
	  DataSource datasource;

	  @Autowired
	  JdbcTemplate jdbcTemplate;
	
	  
	  @Override
	  public List<Segment> getAllSegments() {
		    
		String sql = "select * from segment";
		List<Segment> segments = jdbcTemplate.query(sql, new SegmentMapper());
	
		return segments;
		    
	}
}
	  class SegmentMapper implements RowMapper<Segment> {

		  public Segment mapRow(ResultSet rs, int arg1) throws SQLException {
			  
		    Segment seg = new Segment();
		    seg.setSegID(rs.getInt("segID"));
		    seg.setTipKlast(rs.getInt("tipKlast"));
		    seg.setNazivSeg(rs.getString("nazivSeg"));
		    seg.setUdeo(rs.getDouble("udeo"));
		    seg.setRatingSum(rs.getDouble("rating_sum"));
		    seg.setRatingCount(rs.getDouble("rating_count"));
		    seg.setAverageRating(rs.getDouble("average_rating"));
		    seg.setAuthorReviewSum(rs.getDouble("author_review_count_sum"));
		    seg.setAuthorRatingSum(rs.getDouble("author_average_rating_sum"));
		    seg.setAuthorGeneres(rs.getDouble("author_generes"));
		    seg.setCount(rs.getDouble("count"));
		    seg.setCluster(rs.getInt("cluster"));
		    seg.setNumbReaders(rs.getInt("numbReaders"));
		    
		    return seg;
		  }
}
