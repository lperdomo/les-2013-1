<div id="barra_esquerda">
	<c:choose>
		<c:when test="${usuarioBean.usuario != null}">
			<form id="menu_admin_usuarios" class="formulario_menu" action="<c:url value="/AdminUsuario"></c:url>" method="post">
				<div>
		        	<button type="submit" name="acao" value="listarUsuarios">Listar usu�rios</button>
				</div>
			</form>
		</c:when>
		<c:otherwise>
			<legend>TESTE</legend>
			<br/>
		</c:otherwise>
	</c:choose>
</div>