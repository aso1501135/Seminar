package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SeminerDAO;

/**
 * Servlet implementation class SubjectMake
 */
@WebServlet("/SubjectMake")
public class SubjectMake extends HttpServlet {
	private static final long serialVersionUID = 1L;
	SeminerDAO seminar = new SeminerDAO();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubjectMake() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		if(request.getParameter("delete") != null){
		} else if(request.getParameter("save") !=null){
			request.getParameter("subject");
			seminar.delete();

		}
		RequestDispatcher rd = request.getRequestDispatcher("G302.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
