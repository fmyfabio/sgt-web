<html>
<head>
<script src="jquery-1.9.1.js"></script>

<script>

function chamarServico() {
	$.support.cors = true;
	$.ajax({
	    type: 'POST',
	    contentType: 'application/json',
	    url: 'http://localhost:8080/sgt-web/rest/json/testRestJson',
	    dataType: 'json',
	    data: null,

	    success: function (data, textStatus, jqXHR) {
	        alert(data);
	    },

	    error: function (jqXHR, textStatus, errorThrown) {
	        alert(jqXHR);
	        alert(textStatus);
	        alert(errorThrown);
	        alert('ERRO');
	    }
	});	
}


</script>

</head>
<body>
<h2>Hello World!</h2>
<button onclick="chamarServico()">Chamar Servico</button>
</body>
</html>




