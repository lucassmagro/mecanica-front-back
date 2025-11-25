<?php
require 'conexao.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $sql = "UPDATE contatos SET respondida = 1 WHERE id = :id";
    
    $stmt = $con->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);

    if ($stmt->execute()) {
        echo json_encode(["mensagem" => "Sucesso"]);
    } else {
        echo json_encode(["mensagem" => "Erro"]);
    }
}
?>