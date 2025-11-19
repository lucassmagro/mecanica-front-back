<?php
require 'conexao.php';

if (isset($_GET['nome'])) {
    $sql = "INSERT INTO orcamentos (nome, email, telefone, data_desejada) VALUES (:n, :e, :t, :d)";
    $qry = $con->prepare($sql);
    
    $qry->bindParam(":n", $_GET['nome'], PDO::PARAM_STR);
    $qry->bindParam(":e", $_GET['email'], PDO::PARAM_STR);
    $qry->bindParam(":t", $_GET['telefone'], PDO::PARAM_STR);
    $qry->bindParam(":d", $_GET['data'], PDO::PARAM_STR);

    if ($qry->execute()) {
        echo json_encode(["mensagem" => "Sucesso"]);
    } else {
        echo json_encode(["mensagem" => "Erro"]);
    }
}
?>