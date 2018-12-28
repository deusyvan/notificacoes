<?php 
class lerController extends controller{
    
    public function __construct() {
        parent::__construct();
    }
    
    public function index(){
        $notificacoes = array();
        $n = new Notificacoes();
        $notificacoes = $n->ler();
    }
    
}