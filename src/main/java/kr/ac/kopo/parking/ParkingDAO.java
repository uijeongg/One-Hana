package kr.ac.kopo.parking;

import java.util.List;
import java.util.Map;

public interface ParkingDAO {

	
	int getParkingSum(String accountNo);
	int getParkingBal(String accountNo);
	
	
	
	
	List<Map<String, Object>> getParkingData(String accountNo);





	

	

}
