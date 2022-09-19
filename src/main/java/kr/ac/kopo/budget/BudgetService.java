package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.ac.kopo.divide.DivideVO;
import kr.ac.kopo.myBank.MyBankVO;

public interface BudgetService {

	void updateIncome(Map<String, Object> incomeMap);

	void insertFixed(Map<String, Object> fixedMap);

	MyBankVO getIncomeData(String accountNo);

	List<FixedVO> getFixedData(Map<String, Object> insertMap);

	List<HashMap<String, Object>> getFixedSum(String accountNo);

	List<HashMap<String, Object>> getCalculation(String accountNo);

	List<DivideVO> insertAutoDiv(Map<String, Object> divideMap);

	List<DivideVO> selectDivList(Map<String, Object> divideMap);

}
