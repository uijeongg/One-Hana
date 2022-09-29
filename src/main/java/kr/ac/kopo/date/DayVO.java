package kr.ac.kopo.date;

public class DayVO {

	private String day;
	private int count;
	private int sum;
	
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "DayVO [day=" + day + ", count=" + count + ", sum=" + sum + "]";
	}
	
	
	
}
