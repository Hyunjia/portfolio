package info.thecodinglive.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class User {

	@Id
	private String username; // 변경x
	private String password; // 변경x
	private String email;
	private String role;// ROLE_USER, ROLE_MANAGER, ROLE_ADMIN 등급

	@CreationTimestamp//회원가입 시간 자동저장
	private Timestamp createDate;
	
}
