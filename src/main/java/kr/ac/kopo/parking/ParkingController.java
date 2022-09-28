package kr.ac.kopo.parking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParkingController {

	@Autowired
	private ParkingService parkingService;
	
	
	@GetMapping("/myParkingMain")
	public String goParkingMain() {
		return "/myParking/myParkingMain";
	}
	
	
	/*
	@ResponseBody
	@RequestMapping("/getParkingSum")
	public ModelAndView parkingMain1(@RequestParam("accountNo") String accountNo) {
		ModelAndView mav = new ModelAndView();
		
		//List<Map<String,Object>> parkingSum = parkingService.getParkingData(accountNo);
		int parkingSum = parkingService.getParkingSum(accountNo);
		System.out.println("parkingSum : " + parkingSum);
		
		int parkingBal = parkingService.getParkingBal(accountNo);
		System.out.println("parkingBal : " + parkingBal);
		
		

		Map<String, Object> parkingMap = new HashMap<>();
		parkingMap.put("parkingSum", parkingSum);
		parkingMap.put("parkingBal", parkingBal);
	
		mav.addObject("parkingMap", parkingMap); //모델에 저장 (근데 모델앤뷰가 리퀘스트영역)
		mav.setViewName("/myParking/myParkingAjax");
		return mav;
	}
	*/
	
	@ResponseBody
	@RequestMapping("/getParkingSum")
	public Map<String,Object> parkingMain1(@RequestParam("accountNo") String accountNo) {
		
		//List<Map<String,Object>> parkingSum = parkingService.getParkingData(accountNo);
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
	public List<Map<String,Object>> parkingMain(@RequestParam("accountNo") String accountNo) {
		
		List<Map<String,Object>> parkingList = parkingService.getParkingData(accountNo);
		System.out.println("parkingList : " + parkingList);
		
		return parkingList;
	}
}
