// chat.js

let stompClient = null;
let connected = false; // 연결 상태를 추적하는 변수
let nick = "";
// 페이지 로드 시 실행
$(document).ready(function() {
	// 사용자 닉네임 입력
	Swal.fire({
		title: '닉네임 입력',
		input: 'text',
		inputPlaceholder: '안 치면 채팅 못 들어가여',
		confirmButtonText: '확인',
	}).then((result) => {
		if (result.value) {
			nick = result.value;
			connect(nick);
		}
	});

	// 메시지 전송 버튼 클릭 이벤트
	$('#send-button').click(function() {
		sendMessage();
	});

	// 엔터 키로 메시지 전송
	$('#message-input').keypress(function(e) {
		if (e.which === 13) {
			e.preventDefault();
			sendMessage();
		}
	});
});

// WebSocket 연결 및 STOMP 설정
function connect(nickname) {
	const socket = new SockJS('/websocket');
	stompClient = Stomp.over(socket);
	stompClient.debug = null;
	stompClient.connect({}, function(frame) {
		connected = true; // 연결이 성공했으므로 상태를 업데이트

		// 메시지 구독
		stompClient.subscribe('/topic/messages', function(message) {
			const msg = JSON.parse(message.body);
			$('#chatlist').append('<div><strong>' + msg.nickname + ':</strong> ' + msg.message + '</div>');
			$('#chatlist').scrollTop($('#chatlist')[0].scrollHeight);
		});
	});
}

// 메시지 전송 함수
function sendMessage() {
	if (!connected) {
		return;
	}

	const messageInput = $('#message-input');
	const message = messageInput.val().trim();

	if (message === '') {
		return;
	}
	const nickname = nick;
	const data = {
		message: message,
		nickname: nickname
	};
	stompClient.send("/app/sendMessage/1", {}, JSON.stringify(data));
	messageInput.val('');

}
