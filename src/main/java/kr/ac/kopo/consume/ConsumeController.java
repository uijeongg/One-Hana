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
		
		System.out.println("monthConsumeList : " + monthConsumeList);
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
	
	
	
}
