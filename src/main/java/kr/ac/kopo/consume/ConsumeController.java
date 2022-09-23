package kr.ac.kopo.consume;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ConsumeController {

	@Autowired
	private ConsumeService consumeService;
	
	
	@ResponseBody
	@GetMapping("/getConsumeData")
	public List<Map<String,Object>> consumeMain(@RequestParam("id") String id) {
		
		
		List<Map<String,Object>> consumeList = consumeService.getConsumeData(id);
	
		return consumeList;
	}
	
	

	@GetMapping("/consumeMain")
	public String consumeMain() {
		
		

		
		return "consume/consumeMain";
	}
	
	
}
