package kr.ac.kopo.savings;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SavingsServiceImpl implements SavingsService{

	@Autowired
	private SavingsDAO savingsDAO;
	
	//@over
}
