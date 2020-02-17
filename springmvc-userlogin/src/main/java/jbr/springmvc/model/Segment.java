package jbr.springmvc.model;

public class Segment {
	
	private int segID;
	private int tipKlast;
	private String nazivSeg;
	private double udeo;
	private double ratingSum;
	private double ratingCount;
	private double averageRating;
	private double authorReviewSum;
	private double authorRatingSum;
	private double authorGeneres;
	private double count;
	private int cluster;
	private int numbReaders;
	
	public Segment() {
		
	}
	public Segment(int segID, int tipKlast, String nazivSeg, double udeo, double ratingSum, double ratingCount,
			double averageRating, double authorReviewSum, double authorRatingSum, double authorGeneres, double count,
			int cluster, int numbReaders) {
		this.segID = segID;
		this.tipKlast = tipKlast;
		this.nazivSeg = nazivSeg;
		this.udeo = udeo;
		this.ratingSum = ratingSum;
		this.ratingCount = ratingCount;
		this.averageRating = averageRating;
		this.authorReviewSum = authorReviewSum;
		this.authorRatingSum = authorRatingSum;
		this.authorGeneres = authorGeneres;
		this.count = count;
		this.cluster = cluster;
		this.numbReaders = numbReaders;
	}
	public int getSegID() {
		return segID;
	}
	public void setSegID(int segID) {
		this.segID = segID;
	}
	public int getTipKlast() {
		return tipKlast;
	}
	public void setTipKlast(int tipKlast) {
		this.tipKlast = tipKlast;
	}
	public String getNazivSeg() {
		return nazivSeg;
	}
	public void setNazivSeg(String nazivSeg) {
		this.nazivSeg = nazivSeg;
	}
	public double getUdeo() {
		return udeo;
	}
	public void setUdeo(double udeo) {
		this.udeo = udeo;
	}
	public double getRatingSum() {
		return ratingSum;
	}
	public void setRatingSum(double ratingSum) {
		this.ratingSum = ratingSum;
	}
	public double getRatingCount() {
		return ratingCount;
	}
	public void setRatingCount(double ratingCount) {
		this.ratingCount = ratingCount;
	}
	public double getAverageRating() {
		return averageRating;
	}
	public void setAverageRating(double averageRating) {
		this.averageRating = averageRating;
	}
	public double getAuthorReviewSum() {
		return authorReviewSum;
	}
	public void setAuthorReviewSum(double authorReviewSum) {
		this.authorReviewSum = authorReviewSum;
	}
	public double getAuthorRatingSum() {
		return authorRatingSum;
	}
	public void setAuthorRatingSum(double authorRatingSum) {
		this.authorRatingSum = authorRatingSum;
	}
	public double getAuthorGeneres() {
		return authorGeneres;
	}
	public void setAuthorGeneres(double authorGeneres) {
		this.authorGeneres = authorGeneres;
	}
	public double getCount() {
		return count;
	}
	public void setCount(double count) {
		this.count = count;
	}
	public int getCluster() {
		return cluster;
	}
	public void setCluster(int cluster) {
		this.cluster = cluster;
	}
	public int getNumbReaders() {
		return numbReaders;
	}
	public void setNumbReaders(int numbReaders) {
		this.numbReaders = numbReaders;
	}
	
	@Override
	public String toString() {
		return "Segment [segID=" + segID + ", tipKlast=" + tipKlast + ", nazivSeg=" + nazivSeg + ", udeo=" + udeo
				+ ", ratingSum=" + ratingSum + ", ratingCount=" + ratingCount + ", averageRating=" + averageRating
				+ ", authorReviewSum=" + authorReviewSum + ", authorRatingSum=" + authorRatingSum + ", authorGeneres="
				+ authorGeneres + ", count=" + count + ", cluster=" + cluster + ", numbReaders=" + numbReaders + "]";
	}
	
	
}
