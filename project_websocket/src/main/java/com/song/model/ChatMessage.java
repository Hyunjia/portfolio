package com.song.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;

import lombok.Data;

@Data
@Entity
public class ChatMessage {
	//채팅 메시지 구현
	
	 public enum MessageType {
	        ENTER, TALK
	    }

	//메세지 타입(입장,퇴장)
	@Enumerated(EnumType.STRING)
	private MessageType type; // 메시지 타입
	@Id
    private String roomId; // 방번호
    private String sender; // 메시지 보낸사람
    private String message; // 메시지
}
