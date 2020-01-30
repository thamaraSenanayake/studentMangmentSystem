package com.example.demo;

import com.example.demo.Module.Clz;
import com.example.demo.Module.Student;
import com.example.demo.Module.Teacher;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class Data{
	public static final List<Teacher> teacherArrayList = new ArrayList<>();
	public static List<Clz> clzArrayList = new ArrayList<>();
	public static List<Student> studentArrayList = new ArrayList<>();
}
