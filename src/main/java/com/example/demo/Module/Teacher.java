package com.example.demo.Module;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Teacher {
	private String id;
	private String name;


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

	@Override
	public String toString() {
		return "Teacher{" +
				"id='" + id + '\'' +
				", name='" + name + '\'' +
				'}';
	}
}
