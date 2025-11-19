<?php
require 'conexao.php';

if (isset($_GET['nome']) && isset($_GET['email']) && isset($_GET['mensagem'])) {
    $sql = "INSERT INTO contatos (nome, email, mensagem) VALUES (:n, :e, :m)";
    $qry = $con->prepare($sql);
    
    $qry->bindParam(":n", $_GET['nome'], PDO::PARAM_STR);
    $qry->bindParam(":e", $_GET['email'], PDO::PARAM_STR);
    $qry->bindParam(":m", $_GET['mensagem'], PDO::PARAM_STR);

    if ($qry->execute()) {
        echo json_encode(["mensagem" => "Sucesso"]);
    } else {
        echo json_encode(["mensagem" => "Erro"]);
    }
}
?>