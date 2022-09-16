package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.myBank.MyBankVO;

@Service
public class BudgetServiceImpl implements BudgetService {

	@Autowired
	private BudgetDAO budgetDAO;
	
	
	@Override
	public void updateIncome(Map<String, Object> incomeMap) {
		//System.out.println("여기는 서비스" + incomeMap);
		budgetDAO.updateIncome(incomeMap);	
	}


	@Override
	public void insertFixed(Map<String, Object> fixedMap) {
		
		budgetDAO.insertFixed(fixedMap);
	}
	
	@Override
	public MyBankVO getIncomeData(String accountNo) {
		MyBankVO selectIncome = budgetDAO.getIncomeData(accountNo);
		return selectIncome;
		
	}
	

	@Override
	public List<FixedVO> getFixedData(Map<String, Object> insertMap) {
		return budgetDAO.getFixedData(insertMap);
		//FixedVO selectFixed = budgetDAO.getFixedData(insertMap);
		//return selectFixed;
	}
	
	
	@Override
	public List<HashMap<String, Object>> getFixedSum(String accountNo) {
		return budgetDAO.getFixedSum(accountNo);
	}
}
