package model;

import java.io.Serializable;

public class Mix implements Serializable{


	private String Class_Name;
	private String Student_Name;
	public String getClass_Name() {
		return Class_Name;
	}
	public void setClass_Name(String class_Name) {
		Class_Name = class_Name;
	}
	public String getStudent_Name() {
		return Student_Name;
	}
	public void setStudent_Name(String student_Name) {
		Student_Name = student_Name;
	}
	public Mix(){}



}