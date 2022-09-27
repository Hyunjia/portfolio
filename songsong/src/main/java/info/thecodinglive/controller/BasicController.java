package info.thecodinglive.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import info.thecodinglive.model.Board;
import info.thecodinglive.model.User;
import info.thecodinglive.repository.BoardRepository;
import info.thecodinglive.repository.UserRepository;

@Controller
public class BasicController {

	@Autowired
	BoardRepository boardRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	// 시작 페이지 다중 매핑
	@RequestMapping({ "", "/" })
	public String index() {
		return "index";
	}

	@RequestMapping("/joinForm")
	public String home() {
		return "joinForm";
	}

	@RequestMapping("/user") // 컨트롤러지만 레스트컨트롤러 기능처럼 사용가능@ResponseBody->해당페이지 없이 이동가능
	public @ResponseBody String user() {
		return "user";
	}

	@RequestMapping("/admin") // 1.모든페이지가 로그인을 해야만 접근가능
	public @ResponseBody String admin() {
		return "admin";
	}

	@RequestMapping("/manager")
	public @ResponseBody String manager() {
		return "manager";
	}

	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}

	// 회원가입처리,폼형식->post
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(User user) {
		user.setRole("ROLE_MANAGER");
		System.out.println(user.toString());
		String rawPassword = user.getPassword();
		// 기존 패스워드를 읽어옴
		String encPassword = bCryptPasswordEncoder.encode(rawPassword);
		// 암호화된 패스워드로 만듦
		user.setPassword(encPassword);
		// 읽어들인 패스워드를 저장
		userRepository.save(user);

		return "redirect:/loginForm";
	}

	@RequestMapping("/joinProc")
	public @ResponseBody String joinproc() {
		return "회원가입완료";
	}

	
	@RequestMapping(value = "/list")
	public String list(Model m, @PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable p) {
		PageRequest p2 = PageRequest.of(p.getPageNumber() <= 0 ? 0 : p.getPageNumber() - 1, p.getPageSize(),
				p.getSort());
		Page<Board> page = boardRepository.findAll(p2);

		m.addAttribute("list", page);
		// System.out.println("리스트페이지 이동");
		return "/list";
	}

	@RequestMapping(value = "/joinForm", method = RequestMethod.POST)
	public String joinForm() {
		return "/joinForm";
	}

	@RequestMapping("/form")
	public String inserthome() {
		return "/form";
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ResponseEntity<Board> insert(@RequestBody Board board) {

		UserDetails user = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		User userRe = userRepository.findByUsername(user.getUsername());
		board.setUser(userRe);
		boardRepository.save(board);
		return new ResponseEntity<Board>(board, HttpStatus.CREATED);

	}

	@RequestMapping("/select/")
	public String Board(Model m, @RequestParam(value = "id", defaultValue = "0") int id) {
		Board board = boardRepository.findById(id).orElse(new Board());
		board.updateView();
		boardRepository.save(board);
		m.addAttribute("board", board);

		return "/detail";
	}

	// 기존의 글 클릭 시 폼에 해당 글을 뿌려줌
	@RequestMapping("/update/{id}")
	public String update(@PathVariable int id, Model m) {
		Board board = boardRepository.findById(id).orElse(new Board());
		m.addAttribute("board", board);
		System.out.println(m.toString());
		return "/form";
	}

	@RequestMapping("/likeupdate/{id}")
	public String like(@PathVariable int id, Model m) {
		System.out.println(id);
		Board board = boardRepository.findById(id).orElse(new Board());
		board.likeview();
		boardRepository.save(board);
		m.addAttribute("board", board);
		return "/detail";
	}

	@RequestMapping("/unlikeupdate/{id}")
	public String unlike(@PathVariable int id, Model m) {

		Board board = boardRepository.findById(id).orElse(new Board());

		board.unlikeview();

		boardRepository.save(board);

		m.addAttribute("board", board);

		return "/detail";
	}

	@Transactional
	@RequestMapping(value = "/updatee/{id}", method = RequestMethod.PUT)
	public ResponseEntity<Board> updateBoard(@PathVariable int id, @RequestBody Board reqBoard) {
		Board board = boardRepository.findById(id).orElse(new Board());
		board.setTitle(reqBoard.getTitle());
		board.setContent(reqBoard.getContent());
		board.setSubTitle(reqBoard.getSubTitle());
		board.setBoardType(reqBoard.getBoardType());
		System.out.println(board.toString());
		return new ResponseEntity<Board>(board, HttpStatus.OK);
	} 

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
	public ResponseEntity<?> delete(@PathVariable int id) {
		boardRepository.deleteById(id);
		return new ResponseEntity<>("{}", HttpStatus.OK);
	}

	

	@RequestMapping(value = "/boardsearch/")
	public String search(@RequestParam(value = "username") String username, Model m,
			@PageableDefault(size = 5, sort = "id", direction = Sort.Direction.DESC) Pageable p) {
		System.out.println("==");
		PageRequest p2 = PageRequest.of(p.getPageNumber() <= 0 ? 0 : p.getPageNumber() - 1, p.getPageSize(),
				p.getSort());
		Page<Board> searchresult = boardRepository.findAllByUser_Username(username, p2);
		
		m.addAttribute("list", searchresult);
		m.addAttribute("username", username);
		System.out.println(username);
		System.out.println(searchresult);
		return "/test";
	}
	
	
}
