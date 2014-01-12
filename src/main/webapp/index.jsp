<!DOCTYPE html>
<html lang="pt-br">

	<head>
		<meta charset="utf-8" />

		<title>SGT - Sistema de Agendamento de Transferencia</title>

		<!-- CSS-->
		<link rel="stylesheet" href="css/padrao-geral.css" />

		<!-- IMPORT LIB-->
		<script src="js/lib/knockout-2.2.1.js"></script>
		<script src="js/lib/jquery-1.9.1.js"></script>
		<script src="js/lib/moment.js"></script>
		<script src="js/lib/jquery.maskedinput.js"></script>

		<!-- IMPORT COMMON-->
		<script src="js/common/packagePath.js"></script>
		<script src="js/common/integracao.js"></script>

		<!-- IMPORT Exception-->
		<script src="js/exception/SistemaException.js"></script>		

		<!-- IMPORT MODEL-->
		<script src="js/model/AgendamentoModel.js"></script>

		<!-- IMPORT Service-->
		<script src="js/service/AgendamentoService.js"></script>				

		<!-- IMPORT ViewModel-->
		<script src="js/viewModel/AgendamentoViewModel.js"></script>				
	</head>

	<body>
		<div id="principal">
			<header>
				<h1>Sistema de Agendamento de Transferencia</h1>
			</header>
			<section>
				<input type="text" autofocus data-bind="value: agendamentoModel().contaOrigem" />
				<input type="text" data-bind="value: agendamentoModel().contaDestino" />
				<select data-bind="value: agendamentoModel().tipoAgendamento">
				  <option value="A">A</option>
				  <option value="B">B</option>
				  <option value="C">C</option>
				  <option value="D">D</option>
				</select>					
				<input type="date" data-bind="value: agendamentoModel().dataAgendamento" />
				<input type="number" step="0.01" data-bind="value: agendamentoModel().valorTransferencia" />
				<a href="#" data-bind="click: adicionarAgendamento">Teste Taxa</a>
				<a href="#" data-bind="click: confirmarAgendamento">Confirmar</a>				

				<br/>

	            <ul data-bind="visible: listaAgendamento().length > 0, foreach: listaAgendamento">
					<li>																						
					  <span data-bind="text: contaOrigem"> </span>
					  <span data-bind="text: contaDestino"> </span>
					  <span data-bind="text: valorTransferencia"> </span>
					  <span data-bind="text: taxa"> </span>
					  <span data-bind="text: dataAgendamento"> </span>
					  <span data-bind="text: tipoAgendamento"> </span>
					</li>
				</ul>								    				

			</section>
			<footer>
				<h3>Desafio ELO7 - Fabio Santos</h3>
			</footer>
		</div>
	</body>

</html>




