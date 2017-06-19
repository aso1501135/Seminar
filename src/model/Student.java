/**
 *
 */
package model;

import java.io.Serializable;

/**
 * @author 1501147
 *
 */
public class Student implements Serializable {

	private int studentId;
	private String password;

	public Student(){}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
