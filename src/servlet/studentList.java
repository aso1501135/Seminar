package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class studentList
 */
@WebServlet("/studentList")
public class studentList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MixDAO mix = new MixDAO();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public studentList() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//セッション取得
		HttpSession session=request.getSession();

		//科目と週を取得
		int Seminar_Id = request.getParameter("Seminar_Id");
		int Week = request.getParameter("Week");
		

		StudentList=mix.getStudentList(String Seminar_id,String week);
		//命名変更するべき
		request.setAttribute("studentDetailList",StudentList);
		RequestDispatcher rd = request.getRequestDispatcher(G305.jsp);
		rd.forward(request,response);



	}

}
