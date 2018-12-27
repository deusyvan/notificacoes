<?php 
class verificarController extends controller{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
        
        $dados = array('notificacoes' => '');
        
        $n = new Notificacoes();
        $notificacoes = $n->getVerificar();
        
            
        $dados['notificacoes'] = $notificacoes;
        
        echo json_encode($dados);//Transformando o array em JSON e mostrando ele mesmo e parando qualquer retorno
        exit;
        
    }
    
}