package kr.ac.kopo.consume;

import java.util.List;
import java.util.Map;

public interface ConsumeService {

	List<Map<String, Object>> getConsumeData(String id);

}
