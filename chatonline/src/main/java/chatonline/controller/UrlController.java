package chatonline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UrlController {

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/test")
	public void test() {}
	
}
