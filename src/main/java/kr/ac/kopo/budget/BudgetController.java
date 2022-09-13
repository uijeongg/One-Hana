package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ac.kopo.member.MemberVO;


@Controller
public class BudgetController {

	
	@Autowired
	private BudgetService budgetService;
	
	
	@GetMapping("/setBudgetMain")
	public String goBudgetMain() {
		
		return "/budget/setBudgetMain";
	}
	
	
	@PostMapping("/incomeSettings")
	public String incomeSettings(@RequestParam("income") int income, @RequestParam("incomeDate") String incomeDate, 
								 HttpSession session) {
		//id, accountNo 어딘가에서 받아와야 하고
		//jsp에서 form으로 넘겨준 income, incomeDate 받아서 insert 쿼리 날려주기	
		
//		MemberVO loginVO = (MemberVO) session.getAttribute("loginVO");
		String accountNo = (String)session.getAttribute("accountNo");
		//System.out.println("id : " + session.getAttribute("loginVO"));
		
		
		Map<String, Object> incomeMap = new HashMap<>();
//		incomeMap.put("id", loginVO.getId());
		incomeMap.put("accountNo", accountNo);
		incomeMap.put("income", income);
		incomeMap.put("incomeDate", incomeDate);
	
		System.out.println("인컴맵받아오나요 : " + incomeMap);
		System.out.println("인컴맵받아오나요 : " + incomeMap);
		System.out.println(incomeMap);
	
		
		//서비스 호출 시 incomeMap 가져가기
		budgetService.updateIncome(incomeMap);
		
		
		//얘도 값 인서트 해주고 에이젝스 파서 성공시 석세스로 가게 만들기. 마이뱅크컨트롤러 addPocketAjax 핸들러랑 똑가티
		return "redirect:/"; 
	}
}
