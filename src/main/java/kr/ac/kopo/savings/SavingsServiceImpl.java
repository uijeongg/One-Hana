package kr.ac.kopo.savings;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SavingsServiceImpl implements SavingsService{

	@Autowired
	private SavingsDAO savingsDAO;
	
	@Override
	public List<Map<String, Object>> selectSavingsList(Map<String, Object> savingsList) {
		List<Map<String, Object>> savingList = savingsDAO.selectSavingsList(savingsList);
		return savingList;
	}
}
