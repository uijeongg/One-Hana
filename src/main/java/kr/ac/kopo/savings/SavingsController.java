package kr.ac.kopo.savings;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SavingsController {

	@Autowired
	private SavingsService savingsService;
	
	@GetMapping("/productsMain")
	public String productsMain() {
		return "savings/productsMain";
	}
	
	@GetMapping("/savingsMain")
	public String savingsMain() {
		return "savings/savingsMain";
	}
	
}
