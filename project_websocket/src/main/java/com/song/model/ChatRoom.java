package com.song.model;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.web.socket.WebSocketSession;

import lombok.Builder;
import lombok.Data;
@Data
@Entity
public class ChatRoom {
	//채팅방 구현
	@Id
	private String roomId; //채팅방 아이디
	private String name; //채팅방 이름
	
//	@ElementCollection(targetClass=Integer.class)
//	private Set<WebSocketSession> sessions = new HashSet<>();
	
	//입장한 클라이언트들의 정보 필요
	
//	@Builder
//	public ChatRoom(String roomId, String name) {
//		this.roomId = roomId;
//		this.name = name;
//	}
//	
//	public void handleActions(WebSocketSession session, ChatMessage chatMessage, ChatService chatService) {
//        if (chatMessage.getType().equals(ChatMessage.MessageType.ENTER)) {
//            sessions.add(session);
//            chatMessage.setMessage(chatMessage.getSender() + "님이 입장했습니다.");
//        }
//        sendMessage(chatMessage, chatService);
//    }
//	//채팅방 구현을 위한 DTO, 입장한 클라이언트 정보를 가져야 하므로 WebsocketSession 정보 리스트를 필드로 갖게 함
//
//    public <T> void sendMessage(T message, ChatService chatService) {
//        sessions.parallelStream().forEach(session -> chatService.sendMessage(session, message));
//    }
	
//    채팅방 내에는 입장. 대화하기의 기능 존재
//    handleAction을 통해 분기 처리
//    입장시에는 채팅룸의 session정보->클라이언트의 sessionlist에 추가
//    채팅룸에 메시지가 도착할 경우 채팅룸의 모든 session에 메시지를 발송하면 채팅완성
	
	
//	pub/sub 방식 이용 시
//	구독자가 알아서 관리 되므로 웹소켓 세션 관리가 필요없음
//	또한 발송의 구현도 알아서 해결 되므로 일일이 클라이언트에게 메시지를 발송하는 구현이 필요없음
//	채팅방 DTO 간소화 가능
	
	
	public static ChatRoom create(String name) {
        ChatRoom chatRoom = new ChatRoom();
        chatRoom.roomId = UUID.randomUUID().toString();
        chatRoom.name = name;
        return chatRoom;
    }
	 

}
