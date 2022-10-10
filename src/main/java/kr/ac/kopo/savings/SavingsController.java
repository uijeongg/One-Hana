package kr.ac.kopo.savings;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.budget.AutoDivideVO;

@Controller
public class SavingsController {

	@Autowired
	private SavingsService savingsService;
	
	@GetMapping("/productsMain")
	public String productsMain() {
		return "savings/productsMain";
	}
	
	@GetMapping("/savingsMain")
	public String savingsMain() {
		return "savings/savingsMain";
	}
	
	
	@ResponseBody
	@RequestMapping("/selectSortSavings")
	public List<Map<String, Object>> selectSortSavings(@RequestParam("productType") String productType, @RequestParam("interestMethod") String interestMethod,
								    @RequestParam("minPeriod") String minPeriod, @RequestParam("preferCondition1") String preferCondition1,
								    @RequestParam("preferCondition2") String preferCondition2, @RequestParam("firstAmount") int firstAmount) {
		
		Map<String,Object> savingsMap = new HashMap<>();
		savingsMap.put("productType", productType);
		savingsMap.put("interestMethod", interestMethod);
		savingsMap.put("minPeriod", minPeriod);
		savingsMap.put("preferCondition1", preferCondition1);
		savingsMap.put("preferCondition2", preferCondition2);
		savingsMap.put("firstAmount", firstAmount);
		
		System.out.println("savingsMap : " + savingsMap);
		
		
		//List<SavingsVO> savingsList = new ArrayList<SavingsVO>();
		List<Map<String,Object>> savingsList = savingsService.selectSavingsList(savingsMap);
		System.out.println("savingsList 불러옴? : " + savingsList);
		
		return savingsList;
	}
	
}
