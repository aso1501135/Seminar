package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.TeacherDAO;
import model.Teacher;

/**
 * Servlet implementation class LoginT
 */
@WebServlet("/LoginT")
public class LoginT extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginT() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		String path; // 分岐先のファイル名
		HttpSession session = request.getSession();

		// ユーザID、パスワードの取り出し
		int teacherId = Integer.parseInt(request.getParameter("teacherId"));
		String password = request.getParameter("password");

		TeacherDAO teacherDAO = new TeacherDAO();
		Teacher teacher = new Teacher();

		// IDとパスワードを使ってログインユーザ情報を受け取る
		teacher = teacherDAO.getTeacher(teacherId, password);

		if (teacher != null) {
			System.out.println("ログイン成功");
			// 会員情報をセッションに格納
			session .setAttribute("teacher", teacher);

			path = "G302.jsp";

		} else {
			System.out.println("ログイン失敗");
			request.setAttribute("errorMessage", "学生IDまたはパスワードが違います。");
			path = "G301.jsp";
		}

		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}
