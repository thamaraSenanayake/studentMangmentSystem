package com.example.demo.Module;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Clz {

    private String teacherId;
    private String clzId;
    private String batchDetails;

    @Autowired
    TimeTable timeTable;

    public String getBatchDetails() {
        return batchDetails;
    }

    public void setBatchDetails(String batchDetails) {
        this.batchDetails = batchDetails;
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId;
    }

    public String getClzId() {
        return clzId;
    }

    public void setClzId(String clzId) {
        this.clzId = clzId;
    }

    public TimeTable getTimeTable() {
        return timeTable;
    }

    public void setTimeTable(TimeTable timeTable) {
        this.timeTable = timeTable;
    }

    @Override
    public String toString() {
        return "Clz{" +
                "teacherId='" + teacherId + '\'' +
                ", clzId='" + clzId + '\'' +
                ", batchDetails='" + batchDetails + '\'' +
                ", timeTable=" + timeTable +
                '}';
    }
}
