package kr.ac.kopo.budget;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BudgetDAOImpl implements BudgetDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void updateIncome(Map<String, Object> incomeMap) {
		
		sqlSessionTemplate.update("budget.BudgetDAO.updateIncome", incomeMap);
	}
}
