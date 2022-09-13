package kr.ac.kopo.divide;

import java.util.List;
import java.util.Map;

public interface DivideDAO {

	List<DivideVO> getDivList(Map<String, Object> divMap);

	List<DivideVO> selectDivList(Map<String, Object> divMap);



}
