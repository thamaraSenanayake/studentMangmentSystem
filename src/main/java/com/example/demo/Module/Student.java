package com.example.demo.Module;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Student {
    private String id;
    private  String name;
    private  String clzId;

    @Autowired
    Parent parent;

    public String getClzId() {
        return clzId;
    }

    public void setClzId(String clzId) {
        this.clzId = clzId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Parent getParent() {
        return parent;
    }

    public void setParent(Parent parent) {
        this.parent = parent;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", clzId='" + clzId + '\'' +
                ", parent=" + parent +
                '}';
    }
}
