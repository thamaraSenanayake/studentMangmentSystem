package com.example.demo.Module;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Parent {
    private String parentId;
    private String parentName;

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getParentName() {
        return parentName;
    }

    public void setParentName(String parentName) {
        this.parentName = parentName;
    }

    @Override
    public String toString() {
        return "Parent{" +
                "parentId='" + parentId + '\'' +
                ", parentName='" + parentName + '\'' +
                '}';
    }
}
