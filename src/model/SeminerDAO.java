package model;

import java.util.ArrayList;

public class SeminerDAO extends DBOpenBean {

	String sql;

	public void register(String subject, int study) {
		// subjectは科目名
		// studyは分野ID
		try {
			DbOpen();
			sql = "INSERT INTO seminar (Category_Id,Seminar_Name) VALUES (?,?)";
			ps = con.prepareStatement(sql);
			ps.setInt(1, study);
			ps.setString(2, subject);
			ps.executeUpdate();
		} catch (Exception e) {

		}finally{
			try{
				DbClose();
			}catch(Exception e){

			}
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
			sql = "DELETE FROM seminarst "
				+ "WHERE Seminar_Id = ? "
				+ "AND Week = ? "
				+ "AND Student_Id = ?";
			ps = con.prepareStatement(sql);
			ps.setInt(1, seminarid);
			ps.setInt(2, week);
			ps.setInt(3, userid);
			ps.executeUpdate();

		} catch (Exception e) {

		}finally{
			try{
				DbClose();
			}catch(Exception e){

			}
		}
	}

	//申し込み画面出力
	public ArrayList<Seminar> offerlist(int categoryid){

		ArrayList<Seminar> seminarList = new ArrayList<Seminar>();

		try{

			DbOpen();
			sql =  "SELECT st.Week,se.Seminar_Id,se.Seminar_Name,se.Category_Id "
					+ " FROM seminarte st"
					+ " JOIN seminar se ON st.Seminar_Id = se.Seminar_Id "
					+ " AND se.Category_Id = ? "
					+ " ORDER BY se.Seminar_Id ASC,st.Week";
			ps = con.prepareStatement(sql);
			ps.setInt(1, categoryid);
			rs = ps.executeQuery();

			while(rs.next()){
				Seminar se = new Seminar();
				se.setSeminar_Id(rs.getInt("Seminar_Id"));
				se.setSeminar_Name(rs.getString("Seminar_Name"));
				se.setCategory_Id(rs.getInt("Category_Id"));
				se.setWeek(rs.getInt("Week"));
				seminarList.add(se);

			}

		} catch (Exception e) {

		}finally{
			try{
				DbClose();
			}catch(Exception e){

			}
		}
		return seminarList;
	}

	public void offer(int week,int seminarId,int userid,int flg){
		try{

			DbOpen();
			switch(flg){
			case 1:
				//片方の曜日の科目が決まってるとき
				sql="DELETE FROM seminarst WHERE Student_Id = ?";
				ps = con.prepareStatement(sql);
				ps.setInt(1, userid);
				ps.executeUpdate();
				sql="INSERT INTO seminarst (Seminar_Id,Week,Student_Id ) VALUES(?,?,?) ";
				ps = con.prepareStatement(sql);
				ps.setInt(1, seminarId);
				ps.setInt(2, week);
				ps.setInt(3,userid);
				ps.executeUpdate();
				break;
			case 2:
				if(week == 1){
					sql="DELETE FROM seminarst WHERE Student_Id = ?";
					ps = con.prepareStatement(sql);
					ps.setInt(1, userid);
					ps.executeUpdate();
					sql="INSERT INTO seminarst (Seminar_Id,Week,Student_Id ) VALUES(?,?,?) ";
					ps = con.prepareStatement(sql);
					ps.setInt(1, seminarId);
					ps.setInt(2, week);
					ps.setInt(3,userid);
					ps.executeUpdate();
					break;
				}
				sql="INSERT INTO seminarst (Seminar_Id,Week,Student_Id ) VALUES(?,?,?) ";
				ps = con.prepareStatement(sql);
				ps.setInt(1, seminarId);
				ps.setInt(2, week);
				ps.setInt(3,userid);
				ps.executeUpdate();
				break;
			}

		} catch (Exception e) {

		}finally{
			try{
				DbClose();
			}catch(Exception e){

			}
		}
		return ;

	}
}

