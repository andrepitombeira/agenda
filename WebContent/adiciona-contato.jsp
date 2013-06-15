<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
		<link type="text/css" href="css/jquery.css" rel="stylesheet"/>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
		<title>Adiciona contato</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp"/>
		<form action="mvc" method="post">
			Nome: <input type="text" name="nome"/><br />
			E-mail: <input type="text" name="email"/><br />
			Endereco: <input type="text" name="endereco"/><br />
			Data Nascimento: <caelum:campoData id="dataNascimento"/><br />
			<input type="hidden" name="logica" value="AdicionaContatoLogica"/>
			<input type="submit" value="Gravar"/>		
		</form>
		<c:import url="rodape.jsp"/>
	</body>
</html>