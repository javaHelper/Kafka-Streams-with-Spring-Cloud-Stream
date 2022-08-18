package com.example.demo;

import com.example.demo.service.KafkaProducerService;
import com.example.demo.service.datagenerator.InvoiceGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JsonPosGenApplication implements CommandLineRunner {

    public static void main(String[] args) {
        SpringApplication.run(JsonPosGenApplication.class, args);
    }

    @Autowired
    private KafkaProducerService producerService;

    @Autowired
    private InvoiceGenerator invoiceGenerator;

    @Value("${application.configs.invoice.count}")
    private int INVOICE_COUNT;

    @Override
    public void run(String... args) throws Exception {
        for (int i = 0; i < INVOICE_COUNT; i++) {
            producerService.sendMessage(invoiceGenerator.getNextInvoice());
            Thread.sleep(1000);
        }
    }
}