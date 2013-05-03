<fieldset>
<legend>Registro de viagem</legend>
	<form id="cadastro_viagem" class="formulario_padrao" action="<c:url value="/Viagem"></c:url>" method="post" onsubmit="return validaFormulario(new Array('titulo;String;1', 'descricao;String;1', 'dataInicialDia;int;0', 'dataInicialMes;int;0', 'dataInicialAno;int;0', 'dataFinalDia;int;0', 'dataFinalMes;int;0', 'dataFinalAno;int;0'))">
        <div class="block">
	        <label for="titulo">T�tulo<span class="atencao">*</span>:</label>
	        <input id="titulo" type="text" name="titulo" value="" maxlength="100"/>
	        <span id="tituloErro" class="atencao"></span>
		</div>
        <div class="block edicao_galeria">
	        <label for="imagemPrevia">Imagens:</label>
	        <input id="quantidadeImagem" type="hidden" name="quantidadeImagem" value="1"/>
	        <div id="selecionaImagem1" class="imagem_edicao" onclick="$('#imagem1').click()">
	        	<span id="novaImagem1" class="sobrepoe"></span>
	        	<img id="imagemPrevia1" src=""/>
			</div>
	       	<input id="imagem1" type="file" name="imagem1" onchange="trocaImagem($('#imagemPrevia1'), $('#novaImagem1'), $('#imagem1'))"/>
	        <div id="adicionaImagem" class="imagem_edicao adiciona_imagem" onclick="adicionaCampoImagem($('#adicionaImagem'), $('#quantidadeImagem'))">
			</div>
		</div>
        <div class="block">
	        <label for="descricao">Descricao<span class="atencao">*</span>:</label>
	        <textarea id="descricao" name="descricao" rows="8" cols="60"></textarea>
	        <span id="descricaoErro" class="atencao"></span>
		</div>
        <div class="block">
        	<label for="dataInicialDia">Per�odo da viagem:</label>
        	<br/>
			<label for="dataInicialDia">De<span class="atencao">*</span>:</label>
			<select id="dataInicialDia" name="dataInicialDia">
			</select>
			<span id="dataInicialDiaErro" class="atencao"></span>
			<select id="dataInicialMes" name="dataInicialMes" onchange="populaDropDownDia($('#dataInicialDia'), $(this).val());">
			</select>
			<span id="dataInicialMesErro" class="atencao"></span>
			<select id="dataInicialAno" name="dataInicialAno">
			</select>
			<span id="dataInicialAnoErro" class="atencao"></span>
			<br/>
	        <label for="dataFinalDia">�</label>
			<select id="dataFinalDia" name="dataFinalDia">
			</select>
			<span id="dataFinalDiaErro" class="atencao"></span>
			<select id="dataFinalMes" name="dataFinalMes" onchange="populaDropDownDia($('#dataFinalDia'), $(this).val());">
			</select>
			<span id="dataFinalMesErro" class="atencao"></span>
			<select id="dataFinalAno" name="dataFinalAno">
			</select>
			<span id="dataFinalAnoErro" class="atencao"></span>
		</div>
        <div class="block">
        	<button type="submit" name="acao" value="incluir">Registrar</button>
        </div>
	</form>
</fieldset>
<script type="text/javascript">
	$(document).ready(function() { 
		populaDropDownAno($('#dataInicialAno'));
		populaDropDownMes($('#dataInicialMes')); 
		populaDropDownDia($('#dataInicialDia'), $('#dataInicialMes').val());
		populaDropDownAno($('#dataFinalAno'));
		populaDropDownMes($('#dataFinalMes'));
		populaDropDownDia($('#dataFinalDia'), $('#dataFinalMes').val());
	});
</script>			
