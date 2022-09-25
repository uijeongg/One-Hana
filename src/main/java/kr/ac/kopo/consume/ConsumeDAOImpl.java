package kr.ac.kopo.consume;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
