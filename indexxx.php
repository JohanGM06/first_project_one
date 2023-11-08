<?php
    require_once "models/DataBase.php";
    require_once "controllers/Users.php";
    $controller = new Roles;
    $controller->createUser();

?>