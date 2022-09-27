package info.thecodinglive.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import info.thecodinglive.model.User;

public interface UserRepository extends JpaRepository<User, String>{
	//username이 기준이 됨(=사용자 아이디)
	public User findByUsername(String username);
}
