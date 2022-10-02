package kr.ac.kopo.date;

public class DayVO {
	
	private String month;
	private String day;
	private int times;
	private int sum;
	private int amount;
	private int rank;
	private int name;
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getTimes() {
		return times;
	}
	public void setTimes(int times) {
		this.times = times;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public int getName() {
		return name;
	}
	public void setName(int name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "DayVO [month=" + month + ", day=" + day + ", times=" + times + ", sum=" + sum + ", amount=" + amount
				+ ", rank=" + rank + ", name=" + name + "]";
	}
	
	
	
	
}
