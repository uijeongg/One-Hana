package kr.ac.kopo.parking;

public class ParkingVO {

	private String accountNo;
	private String id;
	private String toPocket;
	private int    parkingAmount;
	private String parkingDate;
	
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
		return "ParkingVO [accountNo=" + accountNo + ", id=" + id + ", toPocket=" + toPocket + ", parkingAmount="
				+ parkingAmount + ", parkingDate=" + parkingDate + "]";
	}
	
	
	
}
