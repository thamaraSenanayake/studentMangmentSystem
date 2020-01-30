package com.example.demo.controler;

import com.example.demo.Data;
import com.example.demo.Module.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@Service
public class TeacherController {

    @Autowired
    Teacher teacher;

    @GetMapping(value = "/addTeacher")
    public String homeController() {
        System.out.println("addTeacher!");
        return "addTeacher.jsp";
    }

    @GetMapping(value = "/editTeacher")
    public String editTeacher() {
        System.out.println("editTeacher");
        return "editTeacher.jsp";
    }

    @RequestMapping(value = "/addTeacher" , method = RequestMethod.POST)
    public String addTeacherToDataBase(HttpServletRequest req) {
        teacher = new Teacher();
        teacher.setId(req.getParameter("id"));
        teacher.setName(req.getParameter("name"));
        Data.teacherArrayList.add(teacher);
        System.out.println("addTeacher to database ");

        return "addTeacher.jsp";
    }

    @GetMapping(value = "/viewTeacher")
    public String viewTeacher() {
        System.out.println(Data.teacherArrayList.toString());
        return "viewTeacher.jsp";
    }

    @RequestMapping(value = "/editTeacher" , method = RequestMethod.POST)
    public String editTeacher(HttpServletRequest req) {
        teacher = new Teacher();

        teacher.setId(req.getParameter("id"));
        teacher.setName(req.getParameter("name"));

        int count = Integer.parseInt(req.getParameter("count"));

        Data.teacherArrayList.set(count,teacher);

        System.out.println("edit teacher");

        return "viewTeacher.jsp";
    }

}
