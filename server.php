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
    }