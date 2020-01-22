package com.example.demo.controler;

import com.example.demo.Module.Clz;
import com.example.demo.Module.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Service
public class ClzController {

    @Autowired
    Clz clz;

    @GetMapping(value = "/addClz")
    public String homeController() {
        System.out.println("addClz!");
        return "addClz.jsp";
    }
}
