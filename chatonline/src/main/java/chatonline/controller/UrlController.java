package chatonline.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UrlController {

	@GetMapping("/")
	public String index() {
		return "index";
	}
	
}
