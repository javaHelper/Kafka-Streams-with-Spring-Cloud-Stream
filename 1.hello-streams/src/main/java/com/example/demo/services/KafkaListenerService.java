package com.example.demo.services;

import com.example.demo.bindings.KafkaListenerBinding;
import lombok.extern.log4j.Log4j2;
import org.apache.kafka.streams.kstream.KStream;
import org.springframework.cloud.stream.annotation.EnableBinding;
import org.springframework.cloud.stream.annotation.Input;
import org.springframework.cloud.stream.annotation.StreamListener;
import org.springframework.stereotype.Service;

@Log4j2
@Service
@EnableBinding(KafkaListenerBinding.class)
public class KafkaListenerService {

    @StreamListener("users-in")
    public void process(KStream<String, String> input) {
        input.foreach((k,v) -> log.info(String.format("Key: %s, Value: %s",k,v)));
    }
}