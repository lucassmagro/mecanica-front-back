<?php
require 'conexao.php';

$sql = "SELECT * FROM orcamentos ORDER BY data_solicitacao DESC";
$qry = $con->prepare($sql);
$qry->execute();

$registros = $qry->fetchAll(PDO::FETCH_OBJ);

echo json_encode($registros);
?>