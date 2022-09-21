package kr.ac.kopo.myBank;

public class MyBankVO {

	private String accountNo;
	private String accountName;
	/* private int basicBal; */
	private int balance;
	private String openDate;
	private int income;
	private String incomeDate;
	private int parkingLimit;
	
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public String getIncomeDate() {
		return incomeDate;
	}
	public void setIncomeDate(String incomeDate) {
		this.incomeDate = incomeDate;
	}
	public int getParkingLimit() {
		return parkingLimit;
	}
	public void setParkingLimit(int parkingLimit) {
		this.parkingLimit = parkingLimit;
	}
	@Override
	public String toString() {
		return "MyBankVO [accountNo=" + accountNo + ", accountName=" + accountName + ", balance=" + balance
				+ ", openDate=" + openDate + ", income=" + income + ", incomeDate=" + incomeDate + ", parkingLimit="
				+ parkingLimit + "]";
	}
	
	
	
	
	
}
