package model;

public class SeminerDAO extends DBOpenBean {
	private int subjectId;
	private String subjectName;
	private String studyId;
	private String studyName;
	private String week;
	private int MasterId;
	private String MasterName;
	String sql;

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getStudyId() {
		return studyId;
	}

	public void setStudyId(String studyId) {
		this.studyId = studyId;
	}

	public String getStudyName() {
		return studyName;
	}

	public void setStudyName(String studyName) {
		this.studyName = studyName;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public int getMasterId() {
		return MasterId;
	}

	public void setMasterId(int masterId) {
		MasterId = masterId;
	}

	public String getMasterName() {
		return MasterName;
	}

	public void setMasterName(String masterName) {
		MasterName = masterName;
	}

	public void register(String subject, int study) {
		// subjectは科目名
		// studyは分野ID
		try {
			DbOpen();
			sql = "INSERT INTO seminar (Category_Id,Seminar_Name) VALUES (?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, study);
			ps.setString(2, subject);
			int rs = ps.executeUpdate();
		} catch (Exception e) {

		}

	}
	public void edit(){
		try{
			DbOpen();
			sql = "";

		} catch (Exception e) {

		}
	}
	public void delete(int seminarid,int week,int userid){
		try{
			DbOpen();
			sql = "DELETE FROM seminarst WHERE Seminar_Id = ? "
					+ "AND Week = ? "
					+ "AND Student_Id = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, seminarid);
			ps.setInt(2, week);
			ps.setInt(3, userid);
			int rs = ps.executeUpdate();

		} catch (Exception e) {

		}

	}

}
