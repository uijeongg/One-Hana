package kr.ac.kopo.consume;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.date.CateVO;
import kr.ac.kopo.date.DayVO;
import kr.ac.kopo.date.MixVO;
import kr.ac.kopo.divide.DivideVO;

@Controller
public class ConsumeController {

	@Autowired
	private ConsumeService consumeService;
	
	

	@GetMapping("/consumeMain")
	public String consumeMain() {

		return "consume/consumeCalandar";
	}
	
	
	@ResponseBody
	@GetMapping("/getConsumeData")
	public List<Map<String,Object>> consumeMain(@RequestParam("id") String id) {
		
		
		List<Map<String,Object>> consumeList = consumeService.getConsumeData(id);
	
	//	System.out.println("consumeList : 달력 " + consumeList);
		return consumeList;
	}
	
	
	@GetMapping("/consumePattern")
	public String consumePattern() {

		return "consume/consumePattern";
	}
	
	
	
	//월별 총 소비
	@ResponseBody
	@GetMapping("/getMonthConsume")
	public List<Map<String,Object>> getMonthConsume(@RequestParam("id") String id, @RequestParam("month") int month) {
		System.out.println("id : "+id);
		System.out.println("month : "+month);
		
		Map<String,Object> monthMap = new HashMap<>();
		monthMap.put("id", id);
		monthMap.put("month", month);
				
		List<Map<String,Object>> monthConsumeList = consumeService.getMonthConsume(monthMap);
		
		//System.out.println("monthConsumeList : " + monthConsumeList);
		return monthConsumeList;	
	}
	
	
	@ResponseBody
	@GetMapping("/getSixMonthConsume")
	public List<Map<String,Object>> getSixMonthConsume(@RequestParam("id") String id, 
			                                           @RequestParam("monthStart") int monthStart,
			                                           @RequestParam("monthEnd") int monthEnd) {
		System.out.println("id : "+id);
		System.out.println("monthStart : "+monthStart);
		System.out.println("monthEnd : "+monthEnd);
		
		Map<String,Object> monthMap = new HashMap<>();
		monthMap.put("id", id);
		monthMap.put("monthStart", monthStart);
		monthMap.put("monthEnd", monthEnd);
				
		List<Map<String,Object>> sixMonthConsumeList = consumeService.getSixMonthConsume(monthMap);
		
		
		return sixMonthConsumeList;	
	}
	
	
	@ResponseBody
	@GetMapping("/getDayConsume") //한달치 일별로 받기 
	public List<Map<String,Object>> getDayConsume(@RequestParam("id") String id, 
            									  @RequestParam("monthStart") int monthStart,
            									  @RequestParam("monthEnd") int monthEnd) {
		System.out.println("id : "+id);
		System.out.println("monthStart : "+monthStart);
		System.out.println("monthEnd : "+monthEnd);
		
		Map<String,Object> dayMap = new HashMap<>();
		dayMap.put("id", id);
		dayMap.put("monthStart", monthStart);
		dayMap.put("monthEnd", monthEnd);
				
		List<Map<String,Object>> dayConsumeList = consumeService.getDayConsume(dayMap);
		
	//	System.out.println("dayConsumeList : " + dayConsumeList);
		return dayConsumeList;	
	}
	
	
	@ResponseBody
	@GetMapping("/getDayConsume2")
	public List<DayVO> getDayConsume2(@RequestParam("id") String id, 
			  						  @RequestParam("monthStart") int monthStart,
			                          @RequestParam("monthEnd") int monthEnd){

		
		Map<String,Object> dayMap2 = new HashMap<>();
		dayMap2.put("id", id);
		dayMap2.put("monthStart", monthStart);
		dayMap2.put("monthEnd", monthEnd);
		
		List<DayVO> dayList = consumeService.getDayConsume2(dayMap2);
		
		
		//System.out.println("dayList : " + dayList);
		
		
		return dayList;
	}
	
	
	@ResponseBody
	@GetMapping("/getDateTop")
	public List<DayVO> dayTopList (@RequestParam("id") String id, 
								   @RequestParam("monthStart") int monthStart,
                                   @RequestParam("monthEnd") int monthEnd){
		
		
		Map<String,Object> dayMap3 = new HashMap<>();
		dayMap3.put("id", id);
		dayMap3.put("monthStart", monthStart);
		dayMap3.put("monthEnd", monthEnd);
		
		List<DayVO> dateTopList = consumeService.getdayTop(dayMap3);
	//	System.out.println("dateTopList : " + dateTopList);
		
		return dateTopList;
	}
	
	
	@ResponseBody
	@GetMapping("/getDateTopList")
	public List<DayVO> getDateTopList(@RequestParam("id") String id, 
			                          @RequestParam("monthStart") int monthStart,
                                      @RequestParam("monthEnd") int monthEnd) {
		
		Map<String,Object> dateTopMap = new HashMap<>();
		dateTopMap.put("id", id);
		dateTopMap.put("monthStart", monthStart);
		dateTopMap.put("monthEnd", monthEnd);
		
		List<DayVO> dateTopHitoryList = consumeService.getDateTopList(dateTopMap);
		//System.out.println("dateTopHitoryList : " + dateTopHitoryList);
		
		return dateTopHitoryList;
		
		
		
	}
	
	
	
	
	@ResponseBody
	@GetMapping("/getCateAmount")
	public List<CateVO> getCateAmount (@RequestParam("id") String id, 
			   @RequestParam("monthStart") int monthStart,
               @RequestParam("monthEnd") int monthEnd){
		
		Map<String,Object> cateMap = new HashMap<>();
		cateMap.put("id", id);
		cateMap.put("monthStart", monthStart);
		cateMap.put("monthEnd", monthEnd);
		
		List<CateVO> cateList = consumeService.getCateAmount(cateMap);
	//	System.out.println("cateList : " + cateList);
		
		
		return cateList;
	}

	
	@ResponseBody
	@GetMapping("/getCate3Data")
	public List<CateVO> getCate3Data (@RequestParam("id") String id, 
				                      @RequestParam("monthStart") int monthStart,
				                      @RequestParam("monthEnd") int monthEnd) {
		
		Map<String,Object> cate3Map = new HashMap<>();
		cate3Map.put("id", id);
		cate3Map.put("monthStart", monthStart);
		cate3Map.put("monthEnd", monthEnd);
		
		List<CateVO> cate3List = consumeService.getCate3Data(cate3Map);
		//System.out.println("cate3List : " + cate3List);
		return cate3List;	
	}
	
	
	
	@ResponseBody
	@GetMapping("/getCateCount")
	public List<MixVO> getCateCount(@RequestParam("id") String id, 
				 		@RequestParam("monthStart") int monthStart,
				 		@RequestParam("monthEnd") int monthEnd) {
		
		Map<String,Object> cate3countMap = new HashMap<>();
		cate3countMap.put("id", id);
		cate3countMap.put("monthStart", monthStart);
		cate3countMap.put("monthEnd", monthEnd);
		
		List<MixVO> cate3CountList = consumeService.getCate3Count(cate3countMap);
		//System.out.println("cate3countList : " + cate3CountList);
		
		return cate3CountList;
	}
	
	
	
	
	
	@ResponseBody
	@GetMapping("/getTimesData")
	public List<DayVO> getTimesData (@RequestParam("id") String id, 
			   						 @RequestParam("monthStart") int monthStart,
			   						 @RequestParam("monthEnd") int monthEnd) {
		
		Map<String,Object> timesMap = new HashMap<>();
		timesMap.put("id", id);
		timesMap.put("monthStart", monthStart);
		timesMap.put("monthEnd", monthEnd);
		
		List<DayVO> timesList = consumeService.getTimesData(timesMap);
		
		System.out.println("timesList : " + timesList);
		
		return timesList;	
	}
	
	
	
	@ResponseBody
	@GetMapping("/getSixMonthAmount")
	public List<DayVO> getSixMonthAmount (@RequestParam("id") String id, 
				                          @RequestParam("monthStart") int monthStart,
				                          @RequestParam("monthEnd") int monthEnd) {
		
		Map<String,Object> sixMap = new HashMap<>();
		sixMap.put("id", id);
		sixMap.put("monthStart", monthStart);
		sixMap.put("monthEnd", monthEnd);
		
		List<DayVO> sixMonthAmountList = consumeService.getSixAmountData(sixMap);
		//System.out.println("sixMonthAmountList 왔쥬? " + sixMonthAmountList);
		return sixMonthAmountList;
	}
	
}

