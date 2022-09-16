package kr.ac.kopo.budget;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.ac.kopo.myBank.MyBankVO;

public interface BudgetDAO {

	void updateIncome(Map<String, Object> incomeMap);

	void insertFixed(Map<String, Object> fixedMap);

	MyBankVO getIncomeData(String accountNo);

	List<FixedVO> getFixedData(Map<String, Object> insertMap);

	List<HashMap<String, Object>> getFixedSum(String accountNo);

	List<HashMap<String, Object>> getCalculation(String accountNo);


}
