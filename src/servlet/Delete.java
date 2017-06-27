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

import model.Seminar;
import model.SeminerDAO;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SeminerDAO seminar = new SeminerDAO();

    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int number = Integer.parseInt(request.getParameter("number"));
		int seminarid = Integer.parseInt(request.getParameter("seminarid"));
		int week = Integer.parseInt(request.getParameter("week"));
		int userid = (int) session.getAttribute("userid");
		seminar.delete(seminarid,week,userid);
		ArrayList<Seminar> lecture = (ArrayList<Seminar>)session.getAttribute("lecture");
		lecture.remove(number);
		RequestDispatcher rd = request.getRequestDispatcher("G202.jsp");
		rd.forward(request, response);
	}

}
