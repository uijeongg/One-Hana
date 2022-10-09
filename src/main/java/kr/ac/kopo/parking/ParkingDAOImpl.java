package kr.ac.kopo.parking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.budget.AutoDivideVO;

@Repository
public class ParkingDAOImpl implements ParkingDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	
	
	@Override
	public int getParkingSum(String accountNo) {
		
		int parkingSum = sqlSessionTemplate.selectOne("parking.ParkingDAO.getParkingSum", accountNo);
		
		return parkingSum;
		
	}
	
	@Override
	public int getParkingBal(String accountNo) {
		
		int parkingBal = sqlSessionTemplate.selectOne("parking.ParkingDAO.getParkingBal", accountNo);
		
		return parkingBal;
		
	}
	

	
	
	
	@Override
	public List<ParkingVO> getParkingData(String accountNo) {
		//System.out.println("하이하이" + accountNo);
		List<ParkingVO> parkingList = sqlSessionTemplate.selectList("parking.ParkingDAO.getParkingData", accountNo);
		
		return parkingList;
	}
	
	@Override
	public List<ParkingVO> getParkingData2(String accountNo) {
		List<ParkingVO> parkingList2 = sqlSessionTemplate.selectList("parking.ParkingDAO.getParkingData2", accountNo);
		return parkingList2;
	}
	
	
	
	@Override
	public void insertAutoParkingSet(Map<String, Object> parkingMap) {
		sqlSessionTemplate.insert("parking.ParkingDAO.insertAutoParkingSet", parkingMap);
	
	}
}
