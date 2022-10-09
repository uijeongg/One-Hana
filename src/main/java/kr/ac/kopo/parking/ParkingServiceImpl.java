package kr.ac.kopo.parking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.budget.AutoDivideVO;

@Service
public class ParkingServiceImpl implements ParkingService {

	@Autowired
	private ParkingDAO parkingDAO;
	
	
	
	@Override
	public int getParkingSum(String accountNo) {
		
		int parkingSum = parkingDAO.getParkingSum(accountNo);
		
		return parkingSum;
	}
	
	@Override
	public int getParkingBal(String accountNo) {
		
		int parkingBal = parkingDAO.getParkingBal(accountNo);
		
		return parkingBal;
	}
	

	
	
	
	@Override
	public List<ParkingVO> getParkingData(String accountNo) {
		List<ParkingVO> parkingList = parkingDAO.getParkingData(accountNo);	
		return parkingList;
	}
	
	@Override
	public List<ParkingVO> getParkingData2(String accountNo) {
		List<ParkingVO> parkingList2 = parkingDAO.getParkingData2(accountNo);
		return parkingList2;
	}
	
	
	
	
	@Override
	public void insertAutoParkingSet(Map<String, Object> parkingMap) {
		parkingDAO.insertAutoParkingSet(parkingMap);
	}
	
	
}
