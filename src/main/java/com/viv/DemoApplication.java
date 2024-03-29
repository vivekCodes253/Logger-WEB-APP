package com.viv;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.viv.log.LoggerMain;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		
	LoggerMain.initializeLogging();
	SpringApplication.run(DemoApplication.class, args);
	
	}

}
