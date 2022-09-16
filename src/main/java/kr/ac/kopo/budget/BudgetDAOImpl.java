package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.myBank.MyBankVO;

@Repository
public class BudgetDAOImpl implements BudgetDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	@Override
	public void updateIncome(Map<String, Object> incomeMap) {	
		sqlSessionTemplate.update("budget.BudgetDAO.updateIncome", incomeMap);
	}

	@Override
	public void insertFixed(Map<String, Object> fixedMap) {
		sqlSessionTemplate.insert("budget.BudgetDAO.insertFixed", fixedMap);
	}
	
	@Override
	public MyBankVO getIncomeData(String accountNo) {
		return sqlSessionTemplate.selectOne("budget.BudgetDAO.getIncomeData", accountNo);
	}
	
	@Override
	public List<FixedVO> getFixedData(Map<String, Object> insertMap) {
		return sqlSessionTemplate.selectList("budget.BudgetDAO.getFixedData", insertMap);
	}
	
	@Override
	public List<HashMap<String, Object>> getFixedSum(String accountNo) {
		return sqlSessionTemplate.selectList("budget.BudgetDAO.getFixedSum", accountNo);
	}

}
