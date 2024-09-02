package chatonline.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

	@GetMapping("/test2")
	public ResponseEntity test2() {
		return ResponseEntity.status(HttpStatus.OK).build();
	}
	
}
