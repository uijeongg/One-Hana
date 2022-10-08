package kr.ac.kopo.savings;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SavingsDAOImpl implements SavingsDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	//@over
}
