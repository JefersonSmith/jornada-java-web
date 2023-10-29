package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Destino;
import model.DestinoDAO;


@WebServlet("/Inserir")
public class InserirDestinoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String cidade = request.getParameter("cidade");
		String pais = request.getParameter("pais");
		double valor = Double.parseDouble(request.getParameter("valor"));
		
		Destino objDestino =  new Destino();
		
		objDestino.setCidade(cidade);
		objDestino.setPais(pais);
		objDestino.setValor(valor);
		DestinoDAO cdao = new DestinoDAO();		
		cdao.save(objDestino);
		
		response.sendRedirect("home");
		
		
		
	}

}
