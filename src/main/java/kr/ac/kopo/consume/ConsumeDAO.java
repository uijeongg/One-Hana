package kr.ac.kopo.consume;

import java.util.List;

import java.util.Map;

import kr.ac.kopo.date.DayVO;



public interface ConsumeDAO {

	List<Map<String, Object>> getConsumeData(String id);

	List<Map<String,Object>> getMonthConsume(Map<String,Object> monthMap);

	List<Map<String, Object>> getSixMonthConsume(Map<String, Object> monthMap);

	List<Map<String, Object>> getDayConsume(Map<String, Object> dayMap);

	List<DayVO> getDayConsume2(Map<String, Object> dayMap2);

	List<DayVO> getDateTop(Map<String, Object> dayMap3);

}
