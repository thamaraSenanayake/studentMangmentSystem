package com.example.demo.controler;

import com.example.demo.Data;
import com.example.demo.Module.Clz;
import com.example.demo.Module.Subject;
import com.example.demo.Module.Teacher;
import com.example.demo.Module.TimeTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@Service
public class ClzController {

    @Autowired
    Clz clz;

    @Autowired
    TimeTable timeTable;

    @Autowired
    Subject subject;

    @GetMapping(value = "/addClz")
    public String homeController() {
        System.out.println("addClz!");
        return "addClz.jsp";
    }

    @GetMapping(value = "/viewClz")
    public String viewClz() {
        System.out.println("viewClz");
        return "viewClz.jsp";
    }

    @GetMapping(value = "/editClz")
    public String editClzView() {
        System.out.println("editClz");
        return "editClz.jsp";
    }

    @RequestMapping(value = "/addClz" , method = RequestMethod.POST)
    public String addClzToDataBase(HttpServletRequest req) {
        clz = new Clz();

        //set class details
        clz.setClzId(req.getParameter("id"));
        clz.setBatchDetails(req.getParameter("batchDetails"));
        clz.setTeacherId(req.getParameter("teacherId"));

        //set time table
        timeTable = new TimeTable();

        //set subject
        subject = new Subject();
        subject.setSubName(req.getParameter("sub1"));
        subject.setSubLevel(req.getParameter("level1"));

        timeTable.setSub1(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub2"));
        subject.setSubLevel(req.getParameter("level2"));

        timeTable.setSub2(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub3"));
        subject.setSubLevel(req.getParameter("level3"));

        timeTable.setSub3(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub4"));
        subject.setSubLevel(req.getParameter("level4"));

        timeTable.setSub4(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub5"));
        subject.setSubLevel(req.getParameter("level5"));

        timeTable.setSub5(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub6"));
        subject.setSubLevel(req.getParameter("level6"));

        timeTable.setSub6(subject);

        clz.setTimeTable(timeTable);

        Data.clzArrayList.add(clz);
        System.out.println("addClz to database ");

        return "addClz.jsp";
    }

    @RequestMapping(value = "/editClz" , method = RequestMethod.POST)
    public String editClz(HttpServletRequest req) {
        clz = new Clz();

        int count = Integer.parseInt(req.getParameter("count"));

        //set class details
        clz.setClzId(req.getParameter("id"));
        clz.setBatchDetails(req.getParameter("batchDetails"));
        clz.setTeacherId(req.getParameter("teacherId"));

        //set time table
        timeTable = new TimeTable();

        //set subject
        subject = new Subject();
        subject.setSubName(req.getParameter("sub1"));
        subject.setSubLevel(req.getParameter("level1"));

        timeTable.setSub1(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub2"));
        subject.setSubLevel(req.getParameter("level2"));

        timeTable.setSub2(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub3"));
        subject.setSubLevel(req.getParameter("level3"));

        timeTable.setSub3(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub4"));
        subject.setSubLevel(req.getParameter("level4"));

        timeTable.setSub4(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub5"));
        subject.setSubLevel(req.getParameter("level5"));

        timeTable.setSub5(subject);

        subject = new Subject();
        subject.setSubName(req.getParameter("sub6"));
        subject.setSubLevel(req.getParameter("level6"));

        timeTable.setSub6(subject);

        clz.setTimeTable(timeTable);

        Data.clzArrayList.set(count,clz);
        System.out.println("addClz to database ");

        return "viewClz.jsp";
    }
}
