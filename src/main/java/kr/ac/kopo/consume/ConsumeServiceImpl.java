package kr.ac.kopo.consume;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
}
