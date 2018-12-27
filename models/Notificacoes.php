<?php 
class Notificacoes extends model{
    
    public function getVerificar(){
        
        $sql = "SELECT * FROM tb_notificacoes WHERE id_user = '1' AND lido = '0'";
        $sql = $this->db->query($sql);
        
        $array = array();
        
        if($sql->rowCount() > 0){
            
            $array['qt'] = $sql->rowCount();
            
            return $array;
            
        } else {
            return 0;
        }
    }
}