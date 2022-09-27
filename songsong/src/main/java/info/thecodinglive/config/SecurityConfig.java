package info.thecodinglive.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity //스프링 필터 체인에 등록->Security설정
@EnableGlobalMethodSecurity(securedEnabled = true,prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter{
//Adapter:필요설정만 오버라이딩 받을 수 있음
	
	//메소드를 통해 비밀번호 암호화, 필요할 때 사용해야하므로 빈 등록
	@Bean
	public BCryptPasswordEncoder encodePwd() {
		return new BCryptPasswordEncoder();
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		http.authorizeRequests()
		//인증요청
		//<등록,권한설정>
		.antMatchers("/user/**").authenticated()
		//authenticated(): user이하는 로그인만해도 들어갈 수 있음
		.antMatchers("/manager/**").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_MANAGER')")
		//해당페이지는 ADMIN,MANAGER계정만 들어올 수 있음
		.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/form").access("hasRole('ROLE_USER') or hasRole('ROLE_MANAGER')")
		
		.anyRequest().permitAll()
		//그외의 요청(위의 3페이지외)은 누구나 갈 수 있는 페이지
		.and()   
		.formLogin()
		.loginPage("/loginForm")
		//로그인 필요시 해당페이지(security가 제어권을 가져가지 못하게함),3페이지경우, 로그인 요구
		.loginProcessingUrl("/login")
		//로그인 후 처리(폼 처리 후 페이지) 
		.defaultSuccessUrl("/list");
		//로그인 성공 시 경로(사용자가 원하는 경로로 가게끔)
	}
}
