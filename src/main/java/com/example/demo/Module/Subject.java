package com.example.demo.Module;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Subject {
    private  String subName;
    private  String  subLevel;
}
