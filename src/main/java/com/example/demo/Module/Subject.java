package com.example.demo.Module;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Subject {
    private  String subName;
    private  String  subLevel;

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    public String getSubLevel() {
        return subLevel;
    }


    public void setSubLevel(String subLevel) {
        this.subLevel = subLevel;
    }

    @Override
    public String toString() {
        return "Subject{" +
                "subName='" + subName + '\'' +
                ", subLevel='" + subLevel + '\'' +
                '}';
    }
}
