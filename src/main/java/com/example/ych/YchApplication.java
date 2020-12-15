package com.example.ych;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.web.context.WebApplicationContext;

@SpringBootApplication(exclude = {ErrorMvcAutoConfiguration.class})
public class YchApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(YchApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(YchApplication.class, args);
    }

    @Override
    protected WebApplicationContext run(SpringApplication application) {
        return super.run(application);
    }
}
