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
import model.SeminerDAO;

/**
 * Servlet implementation class Offer
 */
@WebServlet("/Offer")
public class Offer extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SeminerDAO seminer = new SeminerDAO();
	MixDAO mix = new MixDAO();
	int flg ;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Offer() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<Seminar> list = new ArrayList<Seminar>();
		list =seminer.offerlist(1);
		request.setAttribute("ItList", list);
		list =seminer.offerlist(2);
		request.setAttribute("EngList", list);
		list =seminer.offerlist(3);
		request.setAttribute("CommunList", list);
		RequestDispatcher rd = request.getRequestDispatcher("G203.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		ArrayList<Seminar> lecture = (ArrayList<Seminar>)session.getAttribute("lecture");
		int user =(int)session.getAttribute("userid");
		 String tues = request.getParameter("tuesday");
		 String thurs= request.getParameter("thursday");
		 if(tues == null && thurs == null){

		 }else if(tues != null && thurs ==null) {
			 int tuesId = Integer.parseInt(tues);
			 flg = 1;
			 seminer.offer(1,tuesId,user,flg);
		 }else if(tues == null && thurs != null) {

			 int thursId = Integer.parseInt(thurs);
			 flg = 1;
			 seminer.offer(2,thursId,user,flg);
			 lecture.clear();
			 lecture = mix.lecturelist(user);
			 session.setAttribute("lecture", lecture);
		 }else{
			 lecture.clear();
			 flg =2;
			 int tuesId = Integer.parseInt(tues);
			 seminer.offer(1,tuesId,user,flg);
			 int thursId = Integer.parseInt(thurs);
			 seminer.offer(2,thursId,user,flg);
			 lecture.clear();
			 lecture = mix.lecturelist(user);
			 session.setAttribute("lecture", lecture);

		 }

		request.getRequestDispatcher("G202.jsp").forward(request, response);

	}

}
