<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.3/dist/sweetalert2.min.css">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	height: 100vh;
}

#chat-container {
	display: flex;
	flex-direction: column;
	height: 100%;
}

#chatlist {
	flex: 1;
	overflow-y: auto;
	border: 1px solid #ccc;
	padding: 10px;
	background-color: #f9f9f9;
}

#message-form {
	display: flex;
	border-top: 1px solid #ccc;
	padding: 10px;
	background-color: #fff;
}

#message-form textarea {
	flex: 1;
	padding: 10px;
	margin-right: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

#message-form button {
	padding: 10px 15px;
	border: none;
	background-color: #007bff;
	color: #fff;
	border-radius: 4px;
	cursor: pointer;
}

#message-form button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>

	<div id="chat-container">
        <div id="chatlist"></div>
        <div id="message-form">
            <textarea id="message-input" placeholder="메세지입력"></textarea>
            <button id="send-button">보내기</button>
        </div>
    </div>
    
    
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.1/sockjs.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

	<script src="/js/chat.js"></script>
</body>
</html>








