package model;

import java.util.ArrayList;
public class MixDAO extends DBOpenBean {


	public ArrayList<Seminar> lecturelist(int userid) {
		ArrayList<Seminar> seminarlist = new ArrayList<Seminar>();
		try {
			String sql;
			DbOpen();
			sql = "SELECT sst.Seminar_Id,se.Seminar_Name,sst.Week,te.Teacher_Name,ca.Category_Id,ca.Category_Name "
					+ " FROM seminarst sst "
					+ " JOIN seminar se ON sst.Seminar_Id = se.Seminar_Id "
					+ " JOIN seminarte st ON st.Seminar_Id = sst.Seminar_Id "
					+ " JOIN teacher te ON st.Teacher_Id = te.Teacher_Id "
					+ " JOIN category ca ON se.Category_Id = ca.Category_Id "
					+ " WHERE sst.Student_Id = ? "
					+ " AND sst.Week = st.Week ";
			ps = con.prepareStatement(sql);
			ps.setInt(1, userid);
			rs = ps.executeQuery();
			while(rs.next()){
				Seminar se = new Seminar();
				se.setSeminar_Id(rs.getInt("Seminar_Id"));
				se.setSeminar_Name(rs.getString("Seminar_Name"));
				se.setWeek(rs.getInt("Week"));
				se.setTeacher_Name(rs.getString("Teacher_Name"));
				se.setCategory_Id(rs.getInt("Category_Id"));
				se.setCategory_Name(rs.getString("Category_Name"));
				seminarlist.add(se);


			}
		} catch (Exception e) {

		}
		finally {
			try {
				DbClose();
			} catch (Exception e) {
				System.out.println("エラーか？２");
			}
		}
		return seminarlist;
	}

	public void teacherlist(String subject, int study) {
		// subjectは科目名
		// studyは分野ID
		try {
			DbOpen();
			String sql = "INSERT INTO seminar (Category_Id,Seminar_Name) VALUES (?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, study);
			ps.setString(2, subject);
			ps.executeUpdate();
		} catch (Exception e) {

		}

	}
	//G302.jspの科目等の出力
	public ArrayList<Seminar> seminarList() {

		ArrayList<Seminar> seminarlist = new ArrayList<Seminar>();
		try {
			DbOpen();
			String sql = "SELECT seminarte.Seminar_Id,seminar.Seminar_Name,seminarte.Week,teacher.Teacher_Name,category.Category_Id,category.Category_Name "
					+ "FROM seminarte "
					+ " JOIN teacher ON seminarte.Teacher_Id = teacher.Teacher_Id "
					+ "JOIN seminar ON seminar.Seminar_Id = seminarte.Seminar_Id "
					+ "JOIN category ON seminar.Category_Id = category.Category_Id ";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			int index =0;
			while (rs.next()){

				Seminar se = new Seminar();
				se.setIndex(index++);
				se.setSeminar_Id(rs.getInt("Seminar_Id"));
				se.setSeminar_Name(rs.getString("Seminar_Name"));
				se.setWeek(rs.getInt("Week"));
				se.setTeacher_Name(rs.getString("Teacher_Name"));
				se.setCategory_Id(rs.getInt("Category_Id"));
				se.setCategory_Name(rs.getString("Category_Name"));
				seminarlist.add(se);
			}
		} catch (Exception e) {
			System.out.println("エラーか？");
		}
		finally {
			try {
				DbClose();
			} catch (Exception e) {
				System.out.println("エラーか？２");
			}
		}
		return seminarlist;
	}

	public ArrayList<Mix> getStudentList(int Seminar_Id) {
		// subjectは科目名
		// studyは分野ID
		ArrayList<Mix> studentlist = new ArrayList<Mix>();
		try {

			DbOpen();


			String sql = "SELECT ca.Class_Name,st.Student_Name "
					+ "FROM seminarst sst "
					+ "JOIN student st ON st.Student_Id = sst.Student_Id AND sst.Seminar_Id = ? "
					+ "JOIN class ca ON ca.Class_Id = st.Class_Id";
			System.out.println(sql);
			ps = con.prepareStatement(sql);
			ps.setInt(1, Seminar_Id);
			rs = ps.executeQuery();
			while (rs.next()) {

				Mix mix = new Mix();

				mix.setStudent_Name(rs.getString("Student_Name"));
				mix.setClass_Name(rs.getString("Class_Name"));

				studentlist.add(mix);
			}

		} catch (Exception e) {

		}
		return studentlist;

	}

}
