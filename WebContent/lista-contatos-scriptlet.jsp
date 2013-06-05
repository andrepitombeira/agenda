<%@page import="java.text.SimpleDateFormat"%>
<%@page import="quicktime.app.spaces.ListenerController"%>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Insert title here</title>
<%@ page import="java.util.*, br.com.caelum.agenda.dao.*, br.com.caelum.agenda.modelo.*" %>
</head>
<body>
<table>
<th>Nome</th>
<th>Email</th>
<th>Endereco</th>
<th>Data de Nascimento</th>
	<% 
	ContatoDao dao = new ContatoDao(); 
	List<Contato> contatos = dao.getLista();
	SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
	
	for(Contato contato : contatos) {
	%>	
		<tr>
			<td><%= contato.getNome() %></td>
			<td><%= contato.getEmail() %></td>
			<td><%= contato.getEndereco() %></td>
			<td><%= format.format(contato.getDataNascimento().getTime()) %></td>		
		</tr>
	<%
	}
	%>
</table>	
</body>
</html>