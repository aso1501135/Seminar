package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MixDAO;
import model.Seminar;
import model.UserDAO;

/**
 * Servlet implementation class LoginS
 */
@WebServlet("/LoginS")
public class LoginS extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String path =null; // 分岐先のファイル名
	boolean flg;
	UserDAO user = new UserDAO();
	MixDAO mix = new MixDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginS() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		HttpSession session = request.getSession();

		// ユーザID、パスワードの取り出し
		int userId = Integer.parseInt(request.getParameter("userid"));
		String password = request.getParameter("pass");
		user.setUserId(userId);
		user.setPassword(password);
		flg = user.getStudent();
		if(flg == true){
			ArrayList<Seminar> list = new ArrayList<Seminar>();
			list = mix.lecturelist(user.getUserId());
			session.setAttribute("userid", user.getUserId());
			session.setAttribute("lecture", list);
			path = "G202.jsp";

		}else{
			System.out.println("ログイン失敗");
			request.setAttribute("errorMessage", "生徒IDまたはパスワードが違います。");
			path = "G201.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}
