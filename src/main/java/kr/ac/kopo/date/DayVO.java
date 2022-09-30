package kr.ac.kopo.date;

public class DayVO {

/*
	private String day;
	private int sum;
	
	
	
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "DayVO [day=" + day + ", sum=" + sum + "]";
	}
*/
	
	private String day;
	private int sum;
	private int rank;
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	@Override
	public String toString() {
		return "DayVO [day=" + day + ", sum=" + sum + ", rank=" + rank + "]";
	}
	
	
	
	
	
}
