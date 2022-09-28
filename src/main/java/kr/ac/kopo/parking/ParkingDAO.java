package kr.ac.kopo.parking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.ac.kopo.budget.AutoDivideVO;

public interface ParkingDAO {

	
	int getParkingSum(String accountNo);
	int getParkingBal(String accountNo);
	
	
	
	
	List<HashMap<String, Object>> getParkingData(String accountNo);
	





	

	

}
