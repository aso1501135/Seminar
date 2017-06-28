package servlet;

import java.io.IOException;
import java.sql.Connection;
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

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	SeminerDAO sedb = new SeminerDAO();
	MixDAO mix = new MixDAO();
	Connection con;

    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String subject =request.getParameter("subject");
		int study =Integer.parseInt(request.getParameter("kamoku"));
		sedb.register(subject,study);
		ArrayList<Seminar> List = (ArrayList<Seminar>)session.getAttribute("List");
		List = mix.seminarList();
		session.setAttribute("List",List);
		RequestDispatcher rd = request.getRequestDispatcher("G302.jsp");
	}

}
