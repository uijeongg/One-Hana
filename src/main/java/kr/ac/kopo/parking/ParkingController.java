package kr.ac.kopo.parking;


import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ParkingController {

	@Autowired
	private ParkingService parkingService;
	
	
	@GetMapping("/myParkingMain")
	public String goParkingMain() {
		return "/myParking/myParkingMain";
	}
	

	@ResponseBody
	@RequestMapping("/getParkingSum")
	public Map<String,Object> parkingMain1(@RequestParam("accountNo") String accountNo) {
		
		
		//System.out.println("파킹 파라미터 아이디!! " + id);
		
		int parkingSum = parkingService.getParkingSum(accountNo);
		System.out.println("parkingSum : " + parkingSum);
		
		int parkingBal = parkingService.getParkingBal(accountNo);
		System.out.println("parkingBal : " + parkingBal);
		
	
		
		Map<String, Object> parkingMap = new HashMap<>();
		parkingMap.put("parkingSum", parkingSum);
		parkingMap.put("parkingBal", parkingBal);
		
		
		return parkingMap;
	}
	
	
	@ResponseBody
	@GetMapping("/getParkingData")
	public List<HashMap<String, Object>> parkingMain(@RequestParam("accountNo") String accountNo) {
	//public List<HashMap<String, Object>> parkingMain(@RequestParam("id") String id) {
			
		
		List<HashMap<String, Object>> parkingList = parkingService.getParkingData(accountNo);
		System.out.println("parkingList 불러와? : " + parkingList);
		
		return parkingList;
	}
}
