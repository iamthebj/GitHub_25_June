<?php
    if($_SERVER["REQUEST_METHOD"] === "GET" && !empty($_GET["invoice_id"]) && !empty($_GET["invoice_number"])){
        $invoice_id = $_GET["invoice_id"];
        $invoice_name = $_GET["invoice_number"];
    
    }
    else
        echo "YOU SHOULD NOT BE ON THIS PAGE";
?>
