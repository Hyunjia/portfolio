package info.thecodinglive;

import java.util.Date;
import java.util.Optional;
import java.util.stream.IntStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import info.thecodinglive.model.Board;
import info.thecodinglive.model.BoardType;
import info.thecodinglive.model.User;
import info.thecodinglive.repository.BoardRepository;
import info.thecodinglive.repository.UserRepository;
//@SpringBootApplication
public class SongsongApplication implements CommandLineRunner{
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	BoardRepository boardRepository;

	public static void main(String[] args) {
		SpringApplication.run(SongsongApplication.class, args);
		
		

	}

	@Override
	public void run(String... args) throws Exception {
		// TODO Auto-generated method stub
		Optional<User> user = userRepository.findById("hello");
		
		IntStream.rangeClosed(1, 5).forEach(index -> boardRepository.save(Board.builder()
				.title("hello" + index)
				.subTitle("hello" + index)
				.content("hello")
				.boardType(BoardType.free)
				.wdate(new Date())
				.user(user.get()).build()));
	}

		
	}


