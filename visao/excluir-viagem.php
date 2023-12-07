<!doctype html>
<?php

include '..\controladora\conexao.php';
include '..\modelo\Viagens.php';
include '..\repositorio\ViagemRepositorio.php';

$viagensRepositorio = new ViagemRepositorio($conn);
$excluiViagem = $viagensRepositorio->excluirViagemPorId($_POST['id']);


?>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/admin.css">
    <link rel="stylesheet" href="../css/form.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" href="../img/icone-serenatto.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700&display=swap" rel="stylesheet">
    <title>Viagem10 - Exclusão de Viagem</title>
</head>

<body>
    <main>
        <section class="container-admin-banner">
            <?php
            if ($excluiViagem) {

            ?>
                <h1>Viagem excluída com sucesso</h1>
        </section>
        <section class="container-form">
            <form action="admin.php" method="post">
                <input type="submit" name="voltar" class="botao-cadastrar" value="voltar" />
                <input type='hidden' name='nomeusuario' value="<?= $_SESSION['nomeusuario']; ?>">
                <input type='hidden' name='usuario' value="<?= $_SESSION['usuario']; ?>">

            </form>
        <?php } else {
                echo "erro ao excluir viagem";
            } ?>

        </section>
    </main>
</body>

</html>