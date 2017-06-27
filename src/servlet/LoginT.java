
package servlet;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class LoginT
 */
@WebServlet("/LoginT")
public class LoginT extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String path =null; // 分岐先のファイル名
	Boolean flg;
	UserDAO user = new UserDAO();
	MixDAO mix = new MixDAO();


    public LoginT() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		// ユーザID、パスワードの取り出し
		int userId = Integer.parseInt(request.getParameter("userid"));
		String password = request.getParameter("pass");
		user.setUserId(userId);
		user.setPassword(password);
		flg = user.getTeacher();
		if (flg == true) {
			ArrayList<Seminar> seminarList =new ArrayList<Seminar>();
			seminarList = mix.seminarList();
			System.out.println("nann");
			System.out.println(seminarList);
			session.setAttribute("List", seminarList);

			path = "G302.jsp";
		} else {
			System.out.println("ログイン失敗");
			request.setAttribute("errorMessage", "教師IDまたはパスワードが違います。");
			path = "G301.jsp";
		}

		request.getRequestDispatcher(path).forward(request, response);

	}

}
