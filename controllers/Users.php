<?php
    require_once "models/User.php";
    class Users{
        public function __construct(){}
        
        # Crear Usuario
        public function createUser(){            
            $user = new User(
                3,
                2,                
                "vicente",
                "albeiro",
                "ramos",
                "vicentealbeiro@gmail.com",
                sha1("12345"),
                0,
            );
            $user->userCreate();
        }
        # Listar Usuarios
        public function readUser(){}
        # Actualizar Usuario
        public function updateUser(){}
        # Eliminar Usuario
        public function deleteUser(){}
    }
?>