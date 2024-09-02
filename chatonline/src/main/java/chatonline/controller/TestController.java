package chatonline.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import chat.model.vo.Chat;

@RestController
public class TestController {

	@GetMapping("/test2")
	public ResponseEntity test2() {
		Chat chat = new Chat();
		chat.setMessage("hello");
		chat.setNickname("nick");
		return ResponseEntity.status(HttpStatus.OK).body(chat);
	}
	
}
