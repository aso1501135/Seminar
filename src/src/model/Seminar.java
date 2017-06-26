package model;

import java.io.Serializable;

public class Seminar implements Serializable{
	private int Seminar_Id ;
	private String Seminar_Name;
	private int Category_Id;
	private String Category_Name;
	private String Teacher_Name;
	private int Week;
	public Seminar(){}
	public Seminar(int Seminar_Id,String Seminar_Name,int Category_Id,String Category_Name,String Teacher_Name,int Week) {
		System.out.println("きてる？");
		this.Seminar_Id = Seminar_Id;
		this.Seminar_Name = Seminar_Name;
		this.Category_Id = Category_Id;
		this.Category_Name = Category_Name;
		this.Teacher_Name = Teacher_Name;
		this.Week = Week;
	}

	public int getSeminar_Id() {
		return Seminar_Id;
	}

	public void setSeminar_Id(int seminar_Id) {
		System.out.println("セットしてる？");
		this.Seminar_Id = seminar_Id;
	}

	public String getSeminar_Name() {
		return Seminar_Name;
	}

	public void setSeminar_Name(String seminar_Name) {
		this.Seminar_Name = seminar_Name;
	}

	public int getCategory_Id() {
		return Category_Id;
	}

	public void setCategory_Id(int category_Id) {
		this.Category_Id = category_Id;
	}

	public String getCategory_Name() {
		return Category_Name;
	}

	public void setCategory_Name(String category_Name) {
		this.Category_Name = category_Name;
	}

	public String getTeacher_Name() {
		return Teacher_Name;
	}

	public void setTeacher_Name(String teacher_Name) {
		this.Teacher_Name = teacher_Name;
	}

	public int getWeek() {
		return Week;
	}

	public void setWeek(int week) {
		this.Week = week;
	}




}