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
}
