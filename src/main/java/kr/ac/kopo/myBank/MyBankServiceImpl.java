package kr.ac.kopo.myBank;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.ac.kopo.account.AccountDAO;
import kr.ac.kopo.account.AccountVO;


@Service
public class MyBankServiceImpl implements MyBankService {

	@Autowired
	private MyBankDAO mybankDAO;
	
	@Autowired
	private AccountDAO accountDAO;
	
	
	//1-1
	@Override
	public void updateOne(String accountNo) {
		
		mybankDAO.updateAccount(accountNo);	
	}


	//1-2 insert
	  @Override 
	  public void insertOne(AccountVO newAccount) {
	  
		  mybankDAO.insertNew(newAccount);  
	  }
	  
	  
	  //1-3 select
	  @Override
	  public MyBankVO getNewAccount(String accountNo) {
		  
		  MyBankVO mybankAccount = mybankDAO.selectNew(accountNo);
		  
		  return mybankAccount ; //여기서 받아온 값으로 success.jsp에서 뿌려줌
	  }
	  
	  
	  //2 select
	  @Override
	  public MyBankVO getAccount(String accountNo) {
		  
		  MyBankVO mybankAccount = mybankDAO.selectSuccess(accountNo);
		  
		  return mybankAccount;
	  }
	  
	  
	  //3 주머니 추가 insert
		/*
		 * @Override public void insertNewPoc(AddPocketVO newPocket) {
		 * 
		 * mybankDAO.insertPocket(newPocket); }
		 */


	@Override
	public List<PocketVO> getPocketList(Map<String, Object> paramMap) {
		return mybankDAO.getPocketList(paramMap);
	}


	@Override
	public void insertPocketDetail(Map<String, Object> paramMap) {
		mybankDAO.insertPocketDetail(paramMap);
	}
	  

	@Override
	public void insertBasicPockets(MyBankVO MyBank) {
		mybankDAO.insertPockets(MyBank);
	}
}
