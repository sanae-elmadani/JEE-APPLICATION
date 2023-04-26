package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import metier.copy.CreditImp;
import metier.copy.ICredit;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private ICredit metier;
	
	@Override
		public void init() throws ServletException {
		metier=new CreditImp();
			
		}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		request.setAttribute("creditModel", new CreditModel());
		request.getRequestDispatcher("NewFile.jsp").forward(request, resp);
	}
	@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
			double a =Double.parseDouble(request.getParameter("a"));	
			double b =Double.parseDouble(request.getParameter("b"));	
			CreditModel model=new CreditModel();
			model.setA(a);
			model.setB(b);
			double res=metier.calculeSomme(a, b);
			model.setC(res);
			request.setAttribute("creditModel", model);
			request.getRequestDispatcher("NewFile.jsp").forward(request, resp);
			
		
			}
}
