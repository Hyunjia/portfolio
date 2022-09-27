package info.thecodinglive.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import info.thecodinglive.model.Board;

@Repository
public interface BoardRepository extends JpaRepository<Board, Integer>{
		//public List<Board> findAllByUser_Username(String username);
		public Page<Board> findAllByUser_Username(String username,Pageable paging);
		//username를 기준(조건)으로 나온 결과를 알아서 페이징 해줌 -> 검색결과 보드를 가지고 페이징
		//public Board findByUser(User username);
		
	
		//public Page<Board> findAllByUser_Username(String username,Pageable paging);
}
