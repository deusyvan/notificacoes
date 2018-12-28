function verificarNotificacao(){
	//Requisição ajax a um arquivo
	$.ajax({
		url:'http://localhost/notificacoes/verificar',
		type: 'POST',
		dataType: 'json',
		success:function(json){
			
			if(json.qt > 0) {
				$('.notificacoes').addClass('tem_notificacoes');
				$('.notificacoes').html(json.qt);
			} else {
				$('.notificacoes').removeClass('tem_notificacoes');
				$('.notificacoes').html('0');
			}
		}
	});
}

$(function() {
	setInterval(verificarNotificacao,2000);
	verificarNotificacao();
	
	$('.notificacoes').on('click', function() {
		
	});
});