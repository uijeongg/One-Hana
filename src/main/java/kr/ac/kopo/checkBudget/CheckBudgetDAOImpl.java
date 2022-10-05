package kr.ac.kopo.checkBudget;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.budget.AutoDivideSettingVO;
import kr.ac.kopo.date.DayVO;

@Repository
public class CheckBudgetDAOImpl implements CheckBudgetDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<AutoDivideSettingVO> getBudgetSettingAmount(String accountNo) {
		List<AutoDivideSettingVO> budgetSettingList = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getBudgetSettingAmount", accountNo);
		return budgetSettingList;
	}
	
	@Override
	public List<DayVO> getMonthConsumeList(String id) {
		List<DayVO> monthConsumeList = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getMonthConsumeList", id);
		return monthConsumeList;
	}
	
	@Override
	public List<DayVO> getMonthConsumeList2(String id) {
		List<DayVO> monthConsumeList2 = sqlSessionTemplate.selectList("checkBudget.CheckBudgetDAO.getMonthConsumeList2", id);
		return monthConsumeList2;
		
	}
}
