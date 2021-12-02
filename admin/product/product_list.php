<?php include '../../view/header.php'; ?>
<?php include '../../view/sidebar_admin.php'; ?>
<main>
    <h1 class="top">Meeting Room Manager - List Rooms</h1>
    <p>To view, edit, or delete the details of a room, please click on a category at left, then select a specific room from the list below.</p>
    <p>To add a room, select the "Add Room" link.</p>
    <?php if (count($products) == 0) : ?>
        <p>There are no room listed in this category.</p>
    <?php else : ?>
        <h1>
            <?php echo htmlspecialchars($current_category['categoryName']); ?>
        </h1>
            <?php foreach ($products as $product) : ?>
            <p>
                <a href="?action=view_product&amp;product_id=<?php
                          echo $product['productID']; ?>">
                    <?php echo htmlspecialchars($product['productName']); ?>
                </a>
            </p>
            <?php endforeach; ?>
    <?php endif; ?>

    <h1>Actions</h1>
    <p><a href="index.php?action=show_add_edit_form">Add a Room</a></p>

</main>
<?php include '../../view/footer.php'; ?>