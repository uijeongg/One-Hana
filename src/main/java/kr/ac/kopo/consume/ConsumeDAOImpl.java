package kr.ac.kopo.consume;

import java.util.List;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.date.DayVO;



@Repository
public class ConsumeDAOImpl implements ConsumeDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> getConsumeData(String id) {
		
		List<Map<String, Object>> consumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getConsumeData", id);
		
		return consumeList;
	}
	
	
	@Override
	public List<Map<String,Object>> getMonthConsume(Map<String,Object> monthMap) {
		
		List<Map<String,Object>> monthConsumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getMonthConsumeData", monthMap);
		
		return monthConsumeList;
	}
	
	
	@Override
	public List<Map<String,Object>> getSixMonthConsume(Map<String,Object> monthMap) {
		
		List<Map<String,Object>> sixMonthConsumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getSixMonthConsumeData", monthMap);
		
		return sixMonthConsumeList;
	}
	
	
	@Override
	public List<Map<String, Object>> getDayConsume(Map<String, Object> dayMap) {
		List<Map<String, Object>> dayConsumeList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getDayConsume", dayMap);
		
		return dayConsumeList;
	}
	
	@Override
	public List<DayVO> getDayConsume2(Map<String, Object> dayMap2) {
		List<DayVO> dayList = sqlSessionTemplate.selectList("consume.ConsumeDAO.getDayConsume2", dayMap2);
		return dayList;
	}
}
