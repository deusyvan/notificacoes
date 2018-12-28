<?php 
class lerController extends controller{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        
        $n = new Notificacoes();
        $notificacoes = $n->ler();
    }
    
}