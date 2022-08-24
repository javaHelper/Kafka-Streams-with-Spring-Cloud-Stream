package com.example.demo.bindings;

import com.example.demo.models.UserClick;
import org.apache.kafka.streams.kstream.KStream;
import org.springframework.cloud.stream.annotation.Input;

public interface ClickListenerBinding {

    @Input("click-input-channel")
    KStream<String, UserClick> clickInputStream();

}