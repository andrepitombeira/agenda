<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<link type="text/css" href="css/jquery.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>

	<c:import url="cabecalho.jsp" />
	Formulario para alteracao de contatos:
	<br />

	<form action="mvc" method="post">
		Id: <input type="text" name="id" /><br /> Nome: <input type="text"
			name="nome" /><br /> Email: <input type="text" name="email" /><br />
		Endereco: <input type="text" name="endereco" /><br /> Data de
		Nascimento:
		<caelum:campoData id="dataNascimento"></caelum:campoData>
		<input type="hidden" name="logica" value="AlteraContatoLogica" /> <input
			type="submit" value="Enviar" />
	</form>
	
	<c:import url="rodape.jsp" />
</body>
</html>