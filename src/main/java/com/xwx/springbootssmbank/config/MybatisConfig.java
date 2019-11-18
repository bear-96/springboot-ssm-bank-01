package com.xwx.springbootssmbank.config;

import org.apache.ibatis.session.Configuration;
import org.mybatis.spring.boot.autoconfigure.ConfigurationCustomizer;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import javax.sql.DataSource;

@org.springframework.context.annotation.Configuration
public class MybatisConfig{

    @Bean
    public ConfigurationCustomizer configurationCustomizer() {

        return new ConfigurationCustomizer() {
            @Override
            public void customize(Configuration configuration) {
                configuration.setMapUnderscoreToCamelCase(true);
            }
        };
    }

    @Bean
    public PlatformTransactionManager platformTransactionManager(@Qualifier("dataSource")DataSource dataSource){
        return new DataSourceTransactionManager(dataSource);
    }


}

