<div id="barra_esquerda">
	<c:choose>
		<c:when test="${usuarioBean.usuario != null}">
			<form id="menu_usuario" class="formulario_menu" action="<c:url value="/ViajanteController"></c:url>" method="post">
		        <div class="block">
					<input type="submit" name="acao" value="In�cio"/>
					<br/>
					<input type="submit" name="acao" value="Alterar conta"/>
					<br/>
					<input type="submit" name="acao" value="Alterar perfil"/>
					<br/>
					<input type="submit" name="acao" value="Minhas viagens"/>
		        </div>
			</form>
		</c:when>
		<c:otherwise>
			<br/>
		</c:otherwise>
	</c:choose>
</div>
