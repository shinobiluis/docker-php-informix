<?php
  
try{

    #$bd = new PDO("informix:host=ip; service=puerto;database=base_de_datos; server=servidor; protocol=onsoctcp;EnableScrollableCursors=1", "usuario", "contraeña");
    $bd = new PDO("informix:host=10.1.52.4; service=3002;database=dsipe; server=aguila_sipe_tcp; protocol=onsoctcp;EnableScrollableCursors=1", "sao", "saodesa1");

    echo 'Conexion establecida';
}catch(Exception $e){
    die('Error de conexion '.$e->GetMessage() );
}finally{
    $bd=null;
}
?>
