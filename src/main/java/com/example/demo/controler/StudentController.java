package com.example.demo.controler;


import com.example.demo.Data;
import com.example.demo.Module.Parent;
import com.example.demo.Module.Student;
import com.example.demo.Module.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@Service
public class StudentController {

    @Autowired
    Student student;

    @Autowired
    Parent parent;

    @GetMapping(value = "/addStudent")
    public String addStudent() {
        System.out.println("addStudent!");
        return "addStudent.jsp";
    }

    @GetMapping(value = "/viewStudent")
    public String viewStudent() {
        System.out.println("viewStudent");
        return "viewStudent.jsp";
    }

    @GetMapping(value = "/editStudent")
    public String editStudent() {
        System.out.println("editStudent");
        return "editStudent.jsp";
    }

    @RequestMapping(value = "/searchStudent" , method = RequestMethod.POST)
    public String searchStudents(HttpServletRequest req, Model model) {
        String id = req.getParameter("id");
        model.addAttribute("studentName", id);

        int count = 0;
        for (Student student:Data.studentArrayList) {
            if (student.getId().equals(id)) {
                model.addAttribute("studentCount", count);
                model.addAttribute("studentId", id);
                model.addAttribute("studentName", student.getName());
                model.addAttribute("clzId", student.getClzId());
                model.addAttribute("parentId", student.getParent().getParentId());
                model.addAttribute("parentName", student.getParent().getParentName());
            }
            count++;
        }

        return "searchStudent.jsp";
    }

    @RequestMapping(value = "/addStudent" , method = RequestMethod.POST)
    public String addStudentToDataBase(HttpServletRequest req) {
        student = new Student();
        parent = new Parent();

        student.setId(req.getParameter("studentId"));
        student.setName(req.getParameter("studentName"));
        student.setClzId(req.getParameter("clzId"));

        parent.setParentId(req.getParameter("parentId"));
        parent.setParentName(req.getParameter("parentName"));

        student.setParent(parent);


        Data.studentArrayList.add(student);
        System.out.println("addStudent to database ");

        return "addStudent.jsp";
    }

    @RequestMapping(value = "/editStudent" , method = RequestMethod.POST)
    public String editStudent(HttpServletRequest req) {
        student = new Student();
        parent = new Parent();

        student.setId(req.getParameter("studentId"));
        student.setName(req.getParameter("studentName"));
        student.setClzId(req.getParameter("clzId"));

        parent.setParentId(req.getParameter("parentId"));
        parent.setParentName(req.getParameter("parentName"));

        student.setParent(parent);


        int count = Integer.parseInt(req.getParameter("count"));

        Data.studentArrayList.set(count,student);

        System.out.println("edit student");

        return "viewStudent.jsp";
    }
}
