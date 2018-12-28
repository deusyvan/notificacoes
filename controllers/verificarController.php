<?php 
class verificarController extends controller{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
        $n = new Notificacoes();
        $notificacoes = $n->getVerificar();
        
        echo json_encode($notificacoes);//Transformando o array em JSON e mostrando ele mesmo e parando qualquer retorno
        exit;
        
    }
    
}