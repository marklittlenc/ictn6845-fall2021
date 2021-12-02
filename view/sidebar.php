<aside>
    <h2><a href="http://localhost/book_apps/pitt/">Home</a></h2>
    <h2><a href="http://localhost/book_apps/pitt/about/">About</a></h2>
    <h2><a href="http://localhost/book_apps/pitt/contact/">Contact Us</a></h2>

<hr align=left width=75%>

<h2>Rental Spaces</a></h2>
    <ul>
        <!-- display links for all categories -->
        <?php
            require_once('model/database.php');
            require_once('model/category_db.php');
            
            $categories = get_categories();
            foreach($categories as $category) :
                $name = $category['categoryName'];
                $id = $category['categoryID'];
                $url = $app_path . 'catalog?category_id=' . $id;
        ?>
        <li>
            <a href="<?php echo $url; ?>">
               <?php echo htmlspecialchars($name); ?>
            </a>
        </li>
        <?php endforeach; ?>
    </ul>

<hr align=left width=75%>

    <ul>
        <li>
            <a href="<?php echo $app_path . 'cart'; ?>">View Cart</a>
        </li>
            <?php
            // Check if user is logged in and
            // display appropriate account links
            $account_url = $app_path . 'account';
            $logout_url = $account_url . '?action=logout';
            if (isset($_SESSION['user'])) :
            ?>
                <li><a href="<?php echo $account_url; ?>">My Account</a></li>
                <li><a href="<?php echo $logout_url; ?>">Logout</a>
            <?php else: ?>
                <li><a href="<?php echo $account_url; ?>">Login/Register</a></li>
            <?php endif; ?>
    </ul>
</aside>
