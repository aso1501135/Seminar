/**
 *
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import model.Student;

/**
 * @author 1501147
 *
 */
public class StudentDAO {

	// データベース
	DataSource ds = null; // データベース接続情報
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;

	// ▼▼データベース接続▼▼
	public Connection connection() throws Exception {
		// データベースがなければ、context.xmlから読み込んで設定する
		if (ds == null) {
			ds = (DataSource) (new InitialContext()).lookup("java:comp/env/jdbc/MySQL");
		}
		con = ds.getConnection();

		return con;
	}

	// ▼▼データベース切断▼▼
	public void close() throws Exception {
		// データベース接続されていれば、切断する
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (con != null) {
			con.close();
		}
	}

	// ▼▼ログインユーザ確認▼▼
	public Student getStudent(int studentId, String password) {

		// ログインユーザ情報を格納
		Student student = new Student();

		try {
			// DB接続
			connection();
			// SQL文設定の準備・SQL文の実行
			String sql = "SELECT * FROM student WHERE Student_Id = ? AND Student_Birthday = ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, studentId);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			// 1件目のデータにカーソルを合わせる
			// データがない場合はcatchに飛ぶ
			rs.next();

			// DBから取得したデータをusオブジェクトに格納
			student.setStudentId(rs.getInt("studentId"));

		} catch (Exception e) {
			// 認証失敗
			student = null;
		} finally {
			try {
				close();
			} catch (Exception e) {

			}
		}
		return student;
	}

}
