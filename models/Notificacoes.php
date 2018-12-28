<?php 
class Notificacoes extends model{
    
    public function getVerificar(){
        
        $sql = "SELECT * FROM tb_notificacoes WHERE id_user = '1' AND lido = '0'";
        $sql = $this->db->query($sql);
        
        $array = array('qt'=>0);
        
        if($sql->rowCount() > 0){
            
            $array['qt'] = $sql->rowCount();
            
            return $array;
            
        } else {
            return $array;
        }
    }
    
    public function adicionar(){
        
        $prop = array(
            'curtidor' => '2',
            'id_foto' => '123'
        );
        
        $sql = "INSERT INTO tb_notificacoes(id_user, notificacao_tipo, propriedades, link) VALUES(:id_user, :tipo, :prop, :link)";
        $sql = $this->db->prepare($sql);
        $sql->bindValue(":id_user", "1");
        $sql->bindValue(":tipo", "CURTIDA");
        //Não podemos salvar um array no sql por isso transformamos em um json
        $sql->bindValue(":prop", json_encode($prop));
        
        $sql->bindValue(":link", "http://seusite.com/foto/123");
        
        $sql->execute();
        
        
    }
    
    public function ler(){
        $sql = "SELECT * FROM tb_notificacoes WHERE id_user = '1'";
        $sql = $this->db->query($sql);
        
        if ($sql->rowCount() > 0){
            foreach ($sql->fetchAll() as $item){
                $propriedades = json_decode($item['propriedades']);
                echo "TIPO: ".$item['notificacao_tipo']."<br/>";
                print_r($propriedades);
                echo "<hr/>";
                
            }
        }
    }
}