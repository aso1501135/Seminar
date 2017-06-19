package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.StudentDAO;
import model.Student;

/**
 * Servlet implementation class LoginS
 */
@WebServlet("/LoginS")
public class LoginS extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginS() {
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
		int studentId = Integer.parseInt(request.getParameter("studentId"));
		String password = request.getParameter("password");

		StudentDAO studentDAO = new StudentDAO();
		Student student = new Student();

		// IDとパスワードを使ってログインユーザ情報を受け取る
		student = studentDAO.getStudent(studentId, password);

		if (student != null) {
			System.out.println("ログイン成功");
			// 会員情報をセッションに格納
			session .setAttribute("student", student);

			path = "G202.jsp";

		} else {
			System.out.println("ログイン失敗");
			request.setAttribute("errorMessage", "学生IDまたはパスワードが違います。");
			path = "G201.jsp";
		}

		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}
