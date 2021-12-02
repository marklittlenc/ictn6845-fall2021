<?php 
    require_once('../util/main.php');
    require_once('../util/secure_conn.php');
    require_once('../util/valid_admin.php');
    include 'view/header.php';
    include 'view/sidebar_admin.php';
?>

<main>
    <h1>Admin Menu</h1>
    <p><a href="product">Meeting Room Manager</a></p>
    <p><a href="category">Meeting Room Category Manager</a></p>
    <p><a href="orders">Room Reservations Manager</a></p>
    <p><a href="account">Administrator Accounts Manager</a></p>
</main>

<?php include 'view/footer.php'; ?>
