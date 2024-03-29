package com.probee.waggle;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
@Controller
public class WaggleApplication extends SpringBootServletInitializer{

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(WaggleApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(WaggleApplication.class, args);
	}
	
	@RequestMapping("/")
	public static String goindex() {
		return "home";
	}
	
	@RequestMapping("/home")
	public static String gohome() {
		return "home";
	}
	
	@RequestMapping("/login")
	public static String gologin() {
		return "login";
	}

	@RequestMapping("/inquiry")
	public static String goinquiry() {
		return "inquiry";
	}
	
	@RequestMapping("/chatbot")
	public static String gochatbot() {
		return "chatbot";
	}

}
