package kr.ac.kopo.budget;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BudgetServiceImpl implements BudgetService {

	@Autowired
	private BudgetDAO budgetDAO;
	
	
	@Override
	public void updateIncome(Map<String, Object> incomeMap) {
		System.out.println("여기는 서비스" + incomeMap);
		budgetDAO.updateIncome(incomeMap);
		
	}


	
}
