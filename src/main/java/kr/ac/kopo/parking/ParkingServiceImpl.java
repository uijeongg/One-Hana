package kr.ac.kopo.parking;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public List<Map<String, Object>> getParkingData(String accountNo) {
		
		List<Map<String, Object>> parkingList = parkingDAO.getParkingData(accountNo);
		
		return parkingList;
	}
	
	
}
