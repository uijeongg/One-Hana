package kr.ac.kopo.budget;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.divide.DivideVO;
import kr.ac.kopo.member.MemberVO;
import kr.ac.kopo.myBank.MyBankService;
import kr.ac.kopo.myBank.MyBankVO;
import kr.ac.kopo.myBank.PocketVO;


@Controller
public class BudgetController {

	
	@Autowired
	private BudgetService budgetService;
	
	@Autowired
	private MyBankService mybankService;
	
	
	
	@GetMapping("/setBudgetMain")
	public String goBudgetMain() {
		return "/budget/setBudgetMain";
	}
	
	
	
	@ResponseBody
	@GetMapping("/setBudgetMain2")
	public List<PocketVO> displayPocketList(@RequestParam("accountNo") String accountNo,@RequestParam("id") String id){
		
		Map<String,Object> pocketMap = new HashMap<>();
		pocketMap.put("id", id);
		pocketMap.put("accountNo", accountNo);
		
		List<PocketVO> myPocketList = mybankService.getPocketList(pocketMap);
		myPocketList.remove(0);
		System.out.println("마이포켓리스트" + myPocketList);
		return myPocketList;
	}
	

	
	@ResponseBody
	@PostMapping("/incomeSettings")
	public String incomeSettings(@RequestParam("income") int income, @RequestParam("incomeDate") String incomeDate, 
								 HttpSession session) {
		//session에 저장된 accountNo 받아와야 하고
		//jsp에서 form으로 넘겨준 income, incomeDate 받아서 myBankVO에 update 쿼리 날려주기	
		
		//MemberVO loginVO = (MemberVO) session.getAttribute("loginVO");
		//System.out.println("id : " + session.getAttribute("loginVO"));
		String accountNo = (String)session.getAttribute("accountNo");
		
		
		
		Map<String, Object> incomeMap = new HashMap<>();
		//incomeMap.put("id", loginVO.getId());
		incomeMap.put("accountNo", accountNo);
		incomeMap.put("income", income);
		incomeMap.put("incomeDate", incomeDate);
	
		System.out.println("인컴맵받아오나요 : " + incomeMap);
		
		//서비스 호출 시 incomeMap 가져가기
		budgetService.updateIncome(incomeMap);
	
		session.setAttribute("incomeMap", incomeMap);

		//얘도 값 인서트 해주고 에이젝스 파서 성공시 석세스로 가게 만들기. 마이뱅크컨트롤러 addPocketAjax 핸들러랑 똑가티
		//return "redirect:/"; 
		return "success";
	}
	
	
	
	@ResponseBody
	@RequestMapping("/incomeAjax")
	public ModelAndView incomeAjax(HttpSession session) {
		ModelAndView mav = new ModelAndView();

		String accountNo = (String)session.getAttribute("accountNo");	
		
		MyBankVO updateList = new MyBankVO();
		updateList = budgetService.getIncomeData(accountNo);
		System.out.println("업데이트리스트!!!!!!!!!" + updateList);
				
		
		mav.addObject("updateList", updateList); //모델에 저장 (근데 모델앤뷰가 리퀘스트영역)
		mav.setViewName("/budget/incomeAjax");
		return mav;
	}
	
	
	
	
	
	@ResponseBody
	@PostMapping("/fixedSettings")
	public String fixedSettings(@RequestParam("fixedName") String fixedName, 
								@RequestParam("fixedCost") int fixedCost, HttpSession session) {
	//, @RequestParam("fixedDate") String fixedDate
		String accountNo = (String)session.getAttribute("accountNo");
		
		Map<String, Object> fixedMap = new HashMap<>();
		//incomeMap.put("id", loginVO.getId());
		fixedMap.put("accountNo", accountNo);
		fixedMap.put("fixedName", fixedName);
//		fixedMap.put("fixedDate", fixedDate);
		fixedMap.put("fixedCost", fixedCost);
	
		System.out.println("픽스드맵받아오나요 : " + fixedMap);
		
		//서비스 호출 시 fixedMap 가져가기
		budgetService.insertFixed(fixedMap);		
		
		return "success";
	}
	
	
	
	
	
	@ResponseBody
	@PostMapping("/fixedAjax")
	public ModelAndView fixedAjax(HttpSession session, @RequestParam("fixedName") String fixedName) {
		ModelAndView mav = new ModelAndView();
		
		String accountNo = (String)session.getAttribute("accountNo");
		
		Map<String, Object> insertMap = new HashMap<>();
		insertMap.put("accountNo", accountNo);
		insertMap.put("fixedName", fixedName);
		
		
		
		List<FixedVO> insertList = new ArrayList<FixedVO>();
		insertList = budgetService.getFixedData(insertMap);
		System.out.println("인서트리스트!!!!!!!!!" + insertList);
		
		mav.addObject("insertList", insertList); 
		mav.setViewName("/budget/fixedAjax");
		
		
		return mav;
	}
	
	
	@ResponseBody
	@GetMapping("/getFixedSum")
	public List<HashMap<String, Object>> getFixedSum(String accountNo) {
		
		return budgetService.getFixedSum(accountNo);
	}
	
	
	@ResponseBody
	@GetMapping("/getCalculation")
	public List<HashMap<String, Object>> getCalculation(String accountNo) {
		
		return budgetService.getCalculation(accountNo);
	}
	
	
	//"0 59 11 14 * *" 매달 14일 11시 59분 0초

	//@Scheduled(cron = "0 59 11 14 * ?")
	
	@ResponseBody
	@PostMapping("/autoDivSetting")
	public List<AutoDivideVO> autoDivSetting(HttpSession session, @RequestParam("pocketCode") String pocketCode, @RequestParam("autoDivAmount") int autoDivAmount, @RequestParam("autoDivDate") String autoDivDate) {
		//List<AutoDivideVO>
		String accountNo = (String)session.getAttribute("accountNo");
		
		/*
		 * Map<String, Object> divideMap = new HashMap<>(); divideMap.put("accountNo",
		 * accountNo); divideMap.put("divAmount", autoDivAmount);
		 * divideMap.put("pocketCode", pocketCode); //toPocket의 포켓코드 -> 포켓코드가 2,3,4.. 인
		 * 곳으로 보내라 divideMap.put("autoDivDate", autoDivDate);
		 * 
		 * 
		 * //프로시저 호출 budgetService.insertAutoDiv(divideMap);
		 * 
		 * //select로 ajax 띄워주기 호출 List<DivideVO> autoDivList = new
		 * ArrayList<DivideVO>(); autoDivList = budgetService.selectDivList(divideMap);
		 * 
		 * System.out.println(autoDivList + "autoDivList 자동 잔액 이동 데이터 왔어요?");
		 * 
		 * session.setAttribute("divideMap", divideMap);
		 */
		
		
		
		Map<String, Object> divideMap = new HashMap<>();
		divideMap.put("accountNo", accountNo);
		divideMap.put("divAmount", autoDivAmount);	         
		divideMap.put("pocketCode", pocketCode);  //toPocket의 포켓코드 -> 포켓코드가 2,3,4.. 인 곳으로 보내라	   
		divideMap.put("autoDivDate", autoDivDate);          

		
		//프로시저 호출
		budgetService.insertAutoDiv(divideMap);
		//인서트가 autoDivVO에 돼야지
		
		
		
		
		
		//select로 ajax 띄워주기 호출
		List<AutoDivideVO> autoDivList = new ArrayList<AutoDivideVO>();
		autoDivList = budgetService.selectDivList(divideMap);
		
		System.out.println(autoDivList + "autoDivList 자동 잔액 이동 데이터 왔어요?");
		
		session.setAttribute("divideMap", divideMap);
		return autoDivList;
	}
	
	
	
}
