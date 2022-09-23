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
	
}
