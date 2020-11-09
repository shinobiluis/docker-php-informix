<?php
  
try{

    $bd = new PDO("informix:host=ip; service=puerto;database=base_de_datos; server=servidor; protocol=onsoctcp;EnableScrollableCursors=1", "usuario", "contraeña");

    echo 'Conexion establecida';
}catch(Exception $e){
    die('Error de conexion '.$e->GetMessage() );
}finally{
    $bd=null;
}
?>
