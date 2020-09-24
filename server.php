<?php

    include 'php/catalog.php';

    $catalog = new Catalog('localhost', 'root', '', 'shop');
    $id;
    if (isset ($_GET['id'])){
        $id = $_GET['id'];
    } else {
        $id = false;
    }

    if(isset($_GET['getGoods'])){
        echo json_encode($catalog->getGoods($id), JSON_UNESCAPED_UNICODE);

        
        session_start();

        $time = time();
        $_SESSION['visit_date'] = $time;
        $database = $catalog->database;
        if (!isset($_SESSION['ua'])){
            $_SESSION['ua'] = 'new user';
        }
       
        if ($_SESSION['ua'] != $_SERVER['HTTP_USER_AGENT'] & $id != false){    
            mysqli_query($database, "insert into counter (page_id, negative) values ('$id', 1)");
            $recordId = mysqli_insert_id($database);
            $_SESSION['ua'] = $_SERVER['HTTP_USER_AGENT'];
            while (true) {
                if ((time() - $_SESSION['visit_date']) >= 5){
                    mysqli_query($database, "update counter set negative = '0' where id = '$recordId'");
                    break;
                }
            }
        }
    }