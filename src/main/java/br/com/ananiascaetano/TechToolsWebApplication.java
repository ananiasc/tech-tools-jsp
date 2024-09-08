package br.com.ananiascaetano;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class TechToolsWebApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(TechToolsWebApplication.class, args);
	}

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(TechToolsWebApplication.class);
	}
}
