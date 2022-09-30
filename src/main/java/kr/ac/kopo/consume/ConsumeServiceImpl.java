package kr.ac.kopo.consume;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.date.DayVO;



@Service
public class ConsumeServiceImpl implements ConsumeService {

	@Autowired
	private ConsumeDAO consumeDAO;
	
	@Override
	public List<Map<String, Object>> getConsumeData(String id) {
		
		List<Map<String, Object>> consumeList = consumeDAO.getConsumeData(id);
		
		return consumeList;
	}
	
	
	@Override
	public List<Map<String,Object>> getMonthConsume(Map<String,Object> monthMap) {
		
		List<Map<String,Object>> getMonthConsumeList = consumeDAO.getMonthConsume(monthMap);
		
		return getMonthConsumeList;
	}
	
	@Override
	public List<Map<String, Object>> getSixMonthConsume(Map<String, Object> monthMap) {
		List<Map<String,Object>> getSixMonthConsumeList = consumeDAO.getSixMonthConsume(monthMap);
		
		return getSixMonthConsumeList;
	}
	
	
	@Override
	public List<Map<String, Object>> getDayConsume(Map<String, Object> dayMap) {
		List<Map<String, Object>>  getDayConsumeList = consumeDAO.getDayConsume(dayMap);
		
		return getDayConsumeList;
	}
	
	@Override
	public List<DayVO> getDayConsume2(Map<String, Object> dayMap2) {
		List<DayVO> getDayList = consumeDAO.getDayConsume2(dayMap2);
		
		return getDayList;
	}
	
	
	@Override
	public List<DayVO> getdayTop(Map<String, Object> dayMap3) {
		List<DayVO> getDateTopList = consumeDAO.getDateTop(dayMap3);
		
		return getDateTopList;
		
	}
}
