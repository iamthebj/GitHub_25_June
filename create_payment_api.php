<?php

    if($_SERVER["REQUEST_METHOD"] === "POST" && !empty($_POST["customer_id"]) && !empty($_POST["payment_mode"]) && !empty($_POST["amount"]) 
    && !empty($_POST["invoice_items_json"])){
    
        $customer_id = $_POST["customer_id"];
        $payment_mode = $_POST["payment_mode"];
        $amount = $_POST["amount"];
        $invoice_items_json = $_POST["invoice_items_json"];
        
        $invoice_items = json_decode($invoice_items_json, true);

    else
        echo "YOU SHOULD NOT BE HERE";
?>
