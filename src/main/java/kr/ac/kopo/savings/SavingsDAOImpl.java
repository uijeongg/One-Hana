package kr.ac.kopo.savings;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SavingsDAOImpl implements SavingsDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<Map<String, Object>> selectSavingsList(Map<String, Object> savingsList){
		List<Map<String, Object>> savingList = sqlSessionTemplate.selectList("savings.SavingsDAO.selectSavingsList", savingsList);
				
		return savingList;
	}
}
