package com.example.demo.controler;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Service
public class RootController {
    @GetMapping(value = "/")
    public String homeController() {
        System.out.println("index!");
        return "index.jsp";
    }
}
