<?php
require_once('../util/main.php');
require_once('../model/product_db.php');

// Set the featured product IDs in an array
$product_ids = array(1, 7, 9);
// Note: You could also store a list of featured products in the database

// Get an array of featured products from the database
$products = array();
foreach ($product_ids as $product_id) {
    $product = get_product($product_id);
    $products[] = $product;   // add product to array
}

// Display the home page
include('about.php');
?>