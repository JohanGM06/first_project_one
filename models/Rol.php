<?php

    class Rol {
        // ****** 1er Parte: Clase (POO) *************** //

        //** ATTRIBUTES **/

        private $rolCode;
        private $rolName;

        //** FUNCTIONS **/

        #SOBRE CARGA DE CONSTRUCTORES
        /* public function __construct(){} */

        /**  METODOS SET() Y GET() **/
        
        #rolCode: set()
        public function setRolCode($rolCode){
            $this->rolCode = $rolCode;  
        }

        #rolCode: get()
        public function getRolCode(){
            return $this->rolCode;
        }

        // ****** 2da Parte: Persistencia DB (CRUD) ****** //

        public function rolCreate(){
            echo "Función para crear Rol";
        }

    }