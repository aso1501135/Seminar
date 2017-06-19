/**
 *
 */
package model;

import java.io.Serializable;

/**
 * @author 1501147
 *
 */
public class Teacher implements Serializable {

	private int teacherId;
	private String password;

	public Teacher(){}

	public int getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
