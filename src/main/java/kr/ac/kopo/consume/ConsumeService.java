package kr.ac.kopo.consume;

import java.util.List;
import java.util.Map;

public interface ConsumeService {

	List<Map<String, Object>> getConsumeData(String id);

	List<Map<String,Object>> getMonthConsume(Map<String,Object> monthMap);

	List<Map<String, Object>> getSixMonthConsume(Map<String, Object> monthMap);
	


}
