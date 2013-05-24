<div id="barra_esquerda">
	<c:choose>
		<c:when test="${usuarioBean.usuario != null}">
			<form id="menu1" class="formulario_menu" action="<c:url value="/Viajante"></c:url>" method="post">
				<div class="previa_perfil menu_perfil">
					<button type="submit" name="acao" value="selecionar">
			    		<img id="imagemBarra" class="imagem_barra" src="<c:url value="/Viajante?acao=carregarImagem&id=${usuarioBean.usuario.idUsuario}"></c:url>"/>
			    		<span class="texto_alto titulo">${usuarioBean.usuario.nome}</span>
			    		<span class="texto_centro">Editar perfil</span>
					</button>
				</div>
			</form>
			<form id="menu2" class="formulario_menu" action="<c:url value="/Viajante"></c:url>" method="post">
		        <div>
		        	<button type="submit" name="acao" value="">In�cio</button>
		        </div>
		    </form>
			<form id="menu3" class="formulario_menu" action="<c:url value="/Usuario"></c:url>" method="post">
		        <div>
		        	<button type="submit" name="acao" value="selecionar">Alterar conta</button>
				</div>
		    </form>
			<form id="menu4" class="formulario_menu" action="<c:url value="/Viagem"></c:url>" method="post">
				<div>
		        	<button type="submit" name="acao" value="listar">Minhas viagens</button>
				</div>
			</form>
			
			<form id="menu5" class="formulario_menu" action="<c:url value="/AdminViajante"></c:url>" method="post">
				<div>
		        	<button type="submit" name="acao" value="admin">Admin</button>
				</div>
			</form>
		</c:when>
		<c:otherwise>
			<br/>
		</c:otherwise>
	</c:choose>
</div>
