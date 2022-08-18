package com.example.demo.bindings;

import org.apache.kafka.streams.kstream.KStream;
import org.springframework.cloud.stream.annotation.Input;

public interface KafkaListenerBinding {
    @Input("users-in")
    KStream<String, String> inputStream();
}