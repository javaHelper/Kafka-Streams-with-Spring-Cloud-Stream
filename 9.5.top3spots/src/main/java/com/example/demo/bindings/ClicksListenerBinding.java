package com.example.demo.bindings;

import com.example.demo.models.AdClick;
import com.example.demo.models.AdInventories;
import org.apache.kafka.streams.kstream.GlobalKTable;
import org.apache.kafka.streams.kstream.KStream;
import org.springframework.cloud.stream.annotation.Input;

public interface ClicksListenerBinding {

    @Input("inventories-channel")
    GlobalKTable<String, AdInventories> inventoryInputStream();

    @Input("clicks-channel")
    KStream<String, AdClick> clickInputStream();
}