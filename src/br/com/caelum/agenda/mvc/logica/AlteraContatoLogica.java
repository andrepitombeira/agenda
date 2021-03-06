package br.com.caelum.agenda.mvc.logica;

import java.util.Calendar;
import java.util.Date;
import java.sql.Connection;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AlteraContatoLogica implements Logica {

	@Override
	public void executa(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Contato contato = new Contato();
		Connection connection = (Connection) request.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);
		RequestDispatcher rd = null;
		
		long id = Long.parseLong(request.getParameter("id"));
		
		if(request.getParameter("nome") != null && !request.getParameter("nome").isEmpty()) {
			contato.setId(id);
			contato.setNome(request.getParameter("nome"));
			contato.setEndereco(request.getParameter("endereco"));
			contato.setEmail(request.getParameter("email"));
			
			String dataEmTexto = request.getParameter("dataNascimento");
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			
			Calendar dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
			
			contato.setDataNascimento(dataNascimento);
			
			dao.atualiza(contato);
			
			rd = request.getRequestDispatcher("/lista-contatos-elegante.jsp");
		} else {
			contato = dao.getById(id);
			rd = request.getRequestDispatcher("/altera-contato.jsp");
		}
		request.setAttribute("contato", contato);		
		rd.forward(request, response);
		System.out.println("Alterando contato... " + contato.getNome());
	}
}
