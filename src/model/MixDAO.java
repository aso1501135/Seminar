
public class MixDAO {


	public void getstudentseminar(int student_Id, int seminar_Id) {
	//Seminar_Idは科目名
	//weekは週
	System.out.println("DAO");
	try{
		System.out.println("DBへGO");
		DbOpen();
		System.out.println("DB脱出");

	String sql ="DELETE FROM seminarst WHERE studentId=? AND seminar_Id=?;
	System.out.println(sql);
	ps=con.prepareStatement(sql);
	ps.setInt(1, student_Id);
	ps.setInt(2, seminar_Id);
	int rs = ps.executeUpdate();



	System.out.println("挿入完了！")
	} catch(Exception e){

	}

}



	public void teacherlist(String subject, int study) {
		//subjectは科目名
		//studyは分野ID
		System.out.println("DAO");
		try{
			System.out.println("DBへGO");
			DbOpen();
			System.out.println("DB脱出");

		String sql ="INSERT INTO seminar (Category_Id,Seminar_Name) VALUES (?,?)";
		System.out.println(sql);
		ps=con.prepareStatement(sql);
		ps.setInt(1, study);
		ps.setString(2, subject);
		int rs = ps.executeUpdate();
		System.out.println("挿入完了！");
		} catch(Exception e){

		}

	}


	public void getStudentList(int Seminar_Id, int week) {
		//subjectは科目名
		//studyは分野ID
		System.out.println("DAO");
		try{
			System.out.println("DBへGO");
			DbOpen();
			System.out.println("DB脱出");

		String sql ="SELECT st.Class_Id,st.Student_Id FROM seminarst se,student st"
				+ "WHERE se.student_id = st.student_id"
				+"AND se.Seminar_Id=? AND se.week=?"
				+"GROUP BY st.student,st.Class_Id";
		System.out.println(sql);
		ps=con.prepareStatement(sql);
		ps.setint(1, Seminar_Id);
		ps.setint(2, week);
		rs=prestms=executeQuery();
		System.out.println("挿入完了！");


		while(rs.next()){

			Mix mix=new Mix();


			Mix.setOderId(rs.getString(Student_Id));
			Mix.setOderId(rs.getString(Class_Id));

			studentList.add(mix);
		}

		} catch(Exception e){

		}
		return studentList;

	}





}
