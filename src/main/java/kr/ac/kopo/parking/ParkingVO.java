package kr.ac.kopo.parking;

public class ParkingVO {

	private String accountNo;
	private String toPocket;
	private int    parkingAmount;
	private String parkingDate;
	
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getToPocket() {
		return toPocket;
	}
	public void setToPocket(String toPocket) {
		this.toPocket = toPocket;
	}
	public int getParkingAmount() {
		return parkingAmount;
	}
	public void setParkingAmount(int parkingAmount) {
		this.parkingAmount = parkingAmount;
	}
	public String getParkingDate() {
		return parkingDate;
	}
	public void setParkingDate(String parkingDate) {
		this.parkingDate = parkingDate;
	}
	@Override
	public String toString() {
		return "ParkingVO [accountNo=" + accountNo + ", toPocket=" + toPocket + ", parkingAmount=" + parkingAmount
				+ ", parkingDate=" + parkingDate + "]";
	}
	
	
	
}
