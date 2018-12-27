function verificarNotificacao(){
	//Requisição ajax a um arquivo
	$.ajax({
		url:'http://localhost/notificacoes/verificar',
		type: 'POST',
		dataType: 'json',
		success:function(json){
			
		}
	});
}