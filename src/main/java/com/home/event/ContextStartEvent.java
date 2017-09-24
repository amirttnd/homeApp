package com.home.event;

import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextStartedEvent;


public class ContextStartEvent implements ApplicationListener<ContextStartedEvent> {

    @Override
    public void onApplicationEvent(ContextStartedEvent contextStartedEvent) {
        System.out.println("Context started");
    }
}
