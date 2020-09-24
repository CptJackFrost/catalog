<?php

    class Catalog {

        public $database;

        function __construct ($server, $user, $password, $db){
            $this->database = mysqli_connect($server, $user, $password, $db);
        }

        function updateViews($id){
            session_start();
            $visit_date = date('m/d/Y h:i:s a', time());
            return mysqli_query($this->database, "insert into counter (date, negative, page_id) values ({$visit_date}, true, {$id})");
        }
    

        function getGoods($id = false){

            $data = [];

            if ($id){
                $query = mysqli_query($this->database, "select name, category, price, img from goods g left join goods_img i on g.id = i.good_id where id = {$id}");
            } else {
                $query = mysqli_query($this->database, 'select g.id, g.name, g.category, g.price, q.views, q.p from goods g left join (SELECT a.id, views, p from (select g.id, count(*) as views from goods g left join counter c on c.page_id = g.id where negative = 0 group by c.page_id) a left join (select g.id, count(*) as p from goods g left join goods_img c on c.good_id = g.id group by c.good_id) b on a.id = b.id) q on g.id = q.id');
            }

            $result = mysqli_fetch_all($query);
            
            return $result;
            
        }


    }
