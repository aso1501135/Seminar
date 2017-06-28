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

import model.Mix;
import model.MixDAO;
import model.SeminerDAO;

/**
 * Servlet implementation class SubjectEdit
 */
@WebServlet("/SubjectEdit")
public class SubjectEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SeminerDAO seminar = new SeminerDAO();
	MixDAO mix = new MixDAO();
	String path = null;


    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubjectEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		if(request.getParameter("change") !=null){
			String se[] =request.getParameterValues("seminar");
			int id = Integer.parseInt(se[0]);
			//ArrayList<Seminar> lecture = (ArrayList<Seminar>)session.getAttribute("lecture");
			//int seminarid = getSeminar_Id();
			request.setAttribute("seminarid", id);
			path = "G304.jsp";

		} else if(request.getParameter("student") !=null){

			String se[] =request.getParameterValues("seminar");
			int id = Integer.parseInt(se[0]);
			//String seminarname = se[1];
			//int week = Integer.parseInt(se[2]);
			//ArrayList<Seminar> lecture = (ArrayList<Seminar>)session.getAttribute("lecture");
			//String seminarname = lecture.get(id).getSeminar_Name();
			//int week=lecture.get(id).getWeek();
			ArrayList<Mix> studentlist = new ArrayList<Mix>();
			studentlist = mix.getStudentList(id);
			int member = studentlist.size();
			//session.setAttribute("seminarname", seminarname);
			//session.setAttribute("week", week);
			session.setAttribute("id", id);
			session.setAttribute("member", member);
			session.setAttribute("student", studentlist);
			path = "G305.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
