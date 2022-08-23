package com.example.demo.bindings;

import com.example.demo.model.Employee;
import org.apache.kafka.streams.kstream.KStream;
import org.springframework.cloud.stream.annotation.Input;

public interface EmployeeListenerBinding {

    @Input("employee-input-channel")
    KStream<String, Employee> employeeInputStream();
}