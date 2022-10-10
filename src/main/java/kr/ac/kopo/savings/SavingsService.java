package kr.ac.kopo.savings;

import java.util.List;
import java.util.Map;

public interface SavingsService {

	List<Map<String, Object>> selectSavingsList(Map<String, Object> savingsList);

}
