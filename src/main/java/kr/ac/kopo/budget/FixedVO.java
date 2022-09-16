package kr.ac.kopo.budget;

public class FixedVO {

	private String accountNo;
	private String fixedName;
	private int    fixedCost;
	private String fixedDate;
	private int    pocketCode;
	
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getFixedName() {
		return fixedName;
	}
	public void setFixedName(String fixedName) {
		this.fixedName = fixedName;
	}
	public int getFixedCost() {
		return fixedCost;
	}
	public void setFixedCost(int fixedCost) {
		this.fixedCost = fixedCost;
	}
	public String getFixedDate() {
		return fixedDate;
	}
	public void setFixedDate(String fixedDate) {
		this.fixedDate = fixedDate;
	}
	public int getPocketCode() {
		return pocketCode;
	}
	public void setPocketCode(int pocketCode) {
		this.pocketCode = pocketCode;
	}
	@Override
	public String toString() {
		return "FixedVO [accountNo=" + accountNo + ", fixedName=" + fixedName + ", fixedCost=" + fixedCost
				+ ", fixedDate=" + fixedDate + ", pocketCode=" + pocketCode + "]";
	}


	

}
