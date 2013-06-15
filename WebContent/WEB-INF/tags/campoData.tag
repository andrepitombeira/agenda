<%@ attribute name="id" required="true" %>
<%@ attribute name="value" %>
<input type="text" id="${id}" name="${id}" value="${value}"/>
<script type="text/javascript">
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>