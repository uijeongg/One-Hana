package kr.ac.kopo.parking;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public List<Map<String, Object>> getParkingData(String accountNo) {
		
		List<Map<String, Object>> parkingList = sqlSessionTemplate.selectList("parking.ParkingDAO.getParkingData", accountNo);
		
		return parkingList;
	}
}
