<?php
require 'conexao.php';

$sql = "SELECT * FROM contatos ORDER BY data_envio DESC";
$qry = $con->prepare($sql);
$qry->execute();

$registros = $qry->fetchAll(PDO::FETCH_OBJ);

echo json_encode($registros);
?>