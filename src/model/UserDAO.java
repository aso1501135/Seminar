package model;

public class UserDAO extends DBOpenBean {

	private int UserId;
	private String UserName;
	private String password;
	boolean flg;
	String sql;

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getUserName(){
		return UserName;
	}
	public void setUserName(String userName){
		UserName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public boolean getStudent() {

		try {
			DbOpen();
			sql = "SELECT Student_Name FROM student WHERE Student_Id = ? AND Student_Birthday = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, getUserId());
			ps.setString(2, getPassword());
			rs = ps.executeQuery();

			rs.next();
			String name = rs.getString("Student_Name");
			if(name.length()>0){
				setUserName(name);
				return true;
			}
		} catch (Exception e) {

		}finally{
			try{
				DbClose();
			}catch(Exception e){

			}
		}
		return false;

	}

	public boolean getTeacher() {

		try {
			DbOpen();
			sql = "SELECT Teacher_Name FROM teacher WHERE Teacher_Id = ? AND Teacher_Birthday = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, getUserId());
			ps.setString(2, getPassword());
			rs = ps.executeQuery();

			rs.next();
			String name = rs.getString("Teacher_Name");
			if(name.length()>0){
				setUserName(name);
				return true;
			}
		} catch (Exception e) {

		}finally{
			try{
				DbClose();
			}catch(Exception e){

			}
		}
		return false;

	}

}
