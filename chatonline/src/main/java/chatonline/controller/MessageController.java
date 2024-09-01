package chatonline.controller;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

import chat.model.vo.Chat;

@Controller	
public class MessageController {

	@MessageMapping("/sendMessage/{roomNumber}")
    @SendTo("/topic/messages")
    public Chat sendMessage(Chat message) {
		System.out.println(message);
        return message;
    }
	
}
