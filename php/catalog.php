<?php

    class Catalog {

        public $database;

        function __construct ($server, $user, $password, $db){
            $this->database = mysqli_connect($server, $user, $password, $db);
        }

        function getGoods($id = false){

            $data = [];

            if ($id){
                $query = mysqli_query($this->database, "select name, category, price, img from goods g left join goods_img i on g.id = i.good_id where id = {$id}");
            } else {
                $query = mysqli_query($this->database, 'select id, name, category, price from goods');
            }

            $result = mysqli_fetch_all($query);
            
            return $result;
            
        }

    }
