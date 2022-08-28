package com.example.demo.configs;

import org.apache.kafka.streams.kstream.KStream;
import org.apache.kafka.streams.kstream.ValueMapper;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.function.Function;

@Configuration
@EnableAutoConfiguration
public class ListenerService {

    @Bean
    public Function<KStream<String, String>, KStream<String, String>> process() {
        return input -> input.mapValues((ValueMapper<String, String>) String::toUpperCase);
    }
}