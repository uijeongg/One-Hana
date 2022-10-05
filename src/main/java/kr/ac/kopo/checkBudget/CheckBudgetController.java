package kr.ac.kopo.checkBudget;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.budget.AutoDivideSettingVO;
import kr.ac.kopo.date.DayVO;


@Controller
public class CheckBudgetController {

	@Autowired
	private CheckBudgetService checkBudgetService;
	
	
	@GetMapping("/checkBudgetMain")
	public String goCheckBudgetMain() {
		return "/checkBudget/checkBudgetMain";
	}
	
	
	@ResponseBody
	@GetMapping("/getBudgetGraphData")
	public Map<String,Object> getBudgetGraphData(@RequestParam("id") String id, @RequestParam("accountNo") String accountNo) {
		
		//autoDivSetting에서 amount (불러오기 - 포켓번호별로 싹 다)
		//한달 사용 금액 불러오기
		
		//autoDivideAmount 불러오기
		List<AutoDivideSettingVO> settingAmountList = checkBudgetService.getBudgetSettingAmount(accountNo);
		System.out.println("settingAmountList : " + settingAmountList);
		
		
		//pocketcode2
		List<DayVO> secondConsumeList = checkBudgetService.getMonthConsumeList2(id);
		System.out.println("secondConsumeList : " + secondConsumeList);
		
		
		//pocketcode3 (생활비)
		List<DayVO> thirdConsumeList = checkBudgetService.getMonthConsumeList(id);
		System.out.println("thirdConsumeList : " + thirdConsumeList);
		
		
		Map<String,Object> budgetGraphMap = new HashMap<>();
		budgetGraphMap.put("settingAmountList", settingAmountList);
		budgetGraphMap.put("secondConsumeList", secondConsumeList);
		budgetGraphMap.put("thirdConsumeList", thirdConsumeList);
		System.out.println("budgetGraphMap : " + budgetGraphMap);
		
		
		return budgetGraphMap;
	}
	
}
