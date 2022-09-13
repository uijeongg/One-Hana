package kr.ac.kopo.myBank;

import java.util.List;
import java.util.Map;
import kr.ac.kopo.account.AccountVO;


public interface MyBankService {

	void updateOne(String accountNo);
	
	void insertOne(AccountVO newAccount);
	
	MyBankVO getNewAccount(String account);
	
	MyBankVO getAccount(String accountNo);
	
	/* void insertNewPoc(AddPocketVO newPocket); */

	List<PocketVO> getPocketList(Map<String, Object> paramMap);

	void insertPocketDetail(Map<String, Object> paramMap);

	void insertBasicPockets(MyBankVO MyBank);
}
