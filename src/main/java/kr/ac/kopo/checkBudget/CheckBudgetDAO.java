package kr.ac.kopo.checkBudget;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.budget.AutoDivideSettingVO;
import kr.ac.kopo.date.DayVO;


public interface CheckBudgetDAO {

	List<AutoDivideSettingVO> getBudgetSettingAmount(String accountNo);

	List<DayVO> getMonthConsumeList(String id);

	List<DayVO> getMonthConsumeList2(String id);

	List<DayVO> getConsumeNameList(String id);

	

}
