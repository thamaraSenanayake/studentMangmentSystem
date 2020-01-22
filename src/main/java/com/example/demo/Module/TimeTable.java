package com.example.demo.Module;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class TimeTable {
    @Autowired
    private  Subject sub1;
    @Autowired
    private  Subject sub2;
    @Autowired
    private  Subject sub3;
    @Autowired
    private  Subject sub4;
    @Autowired
    private  Subject sub5;
    @Autowired
    private  Subject sub6;

    public Subject getSub1() {
        return sub1;
    }

    public void setSub1(Subject sub1) {
        this.sub1 = sub1;
    }

    public Subject getSub2() {
        return sub2;
    }

    public void setSub2(Subject sub2) {
        this.sub2 = sub2;
    }

    public Subject getSub3() {
        return sub3;
    }

    public void setSub3(Subject sub3) {
        this.sub3 = sub3;
    }

    public Subject getSub4() {
        return sub4;
    }

    public void setSub4(Subject sub4) {
        this.sub4 = sub4;
    }

    public Subject getSub5() {
        return sub5;
    }

    public void setSub5(Subject sub5) {
        this.sub5 = sub5;
    }

    public Subject getSub6() {
        return sub6;
    }

    public void setSub6(Subject sub6) {
        this.sub6 = sub6;
    }

    @Override
    public String toString() {
        return "TimeTable{" +
                "sub1=" + sub1 +
                ", sub2=" + sub2 +
                ", sub3=" + sub3 +
                ", sub4=" + sub4 +
                ", sub5=" + sub5 +
                ", sub6=" + sub6 +
                '}';
    }
}
