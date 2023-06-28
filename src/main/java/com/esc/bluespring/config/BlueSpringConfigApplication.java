package com.esc.bluespring.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class BlueSpringConfigApplication {

  public static void main(String[] args) {
    SpringApplication.run(BlueSpringConfigApplication.class, args);
  }

}
