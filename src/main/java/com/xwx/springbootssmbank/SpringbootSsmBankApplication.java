package com.xwx.springbootssmbank;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(value = "com.xwx.springbootssmbank.mapper")
@SpringBootApplication
public class SpringbootSsmBankApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootSsmBankApplication.class, args);
    }

}
