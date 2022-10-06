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
		
		//autoDivideAmount 불러오기
		List<AutoDivideSettingVO> settingAmountList = checkBudgetService.getBudgetSettingAmount(accountNo);
		//System.out.println("settingAmountList : " + settingAmountList);
		List<DayVO> secondConsumeList = checkBudgetService.getMonthConsumeList2(id);
		//System.out.println("secondConsumeList : " + secondConsumeList);
		List<DayVO> thirdConsumeList = checkBudgetService.getMonthConsumeList(id);
		//System.out.println("thirdConsumeList : " + thirdConsumeList);
		List<DayVO> consumeNameList = checkBudgetService.getConsumeNameList(id);
		//System.out.println("consumeNameList : " + consumeNameList);
		
		Map<String,Object> budgetGraphMap = new HashMap<>();
		budgetGraphMap.put("settingAmountList", settingAmountList);
		budgetGraphMap.put("secondConsumeList", secondConsumeList);
		budgetGraphMap.put("thirdConsumeList", thirdConsumeList);
		budgetGraphMap.put("consumeNameList", consumeNameList);
		//System.out.println("budgetGraphMap : " + budgetGraphMap);
		
		return budgetGraphMap;
	}
}
