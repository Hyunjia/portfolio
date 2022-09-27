package info.thecodinglive.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
@Entity
@Table(name = "Board_practice")
public class Board implements Serializable{
	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "ID")
	private int id;
	private String title;
	private String subTitle;
	private String content;
	private long view;
	private int likeview;
	private int unlikeview;
	
	//EnumType.STRING : enum 이름을 DB에 저장
	@Enumerated(EnumType.STRING)
	private BoardType boardType;
	
	private Date wdate;
	
	@PrePersist
	public void beforeCreate() {
		wdate = new Date();
	}
	
	public Board updateView(){
        this.view++;
        return this;
    }
	public Board likeview(){
        this.likeview++;
        return this;
    }
	public Board unlikeview(){
        this.unlikeview++;
        return this;
    }
	
	//단방향1:1관계
	//EAGER는 언제나 한 번의 쿼리로 모든 정보가져옴
	//LAZY: 참조 객체들의 데이터들은 무시하고 해당 엔티티의 데이터만을 가져옴
	//@JsonIgnore사용 가능 /안쓰고 (Lazy)사용시->수정 안먹힘(https://ahndding.tistory.com/24)
	@ManyToOne(fetch = FetchType.EAGER)
	//@JsonIgnore
	private User user;  
	
	//객체생성 시 매개변수 순서 상관없으
	@Builder 
	public Board(String title, String subTitle, String content, BoardType boardType, Date wdate, User user) {
		super();
		this.title = title;
		this.subTitle = subTitle; 
		this.content = content;
		this.boardType = boardType;
		this.wdate = wdate;
		this.user = user;
		
	}
	
	

}
