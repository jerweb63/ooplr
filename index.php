<?php # index.php

require_once 'core/init.php';

if(Session::exists('home')) {

    echo '<p>' . Session::flash('home') . '</p>';
}

$user = new User();
//echo $user->data()->username;
if($user->is_LoggedIn()) {
?>
    <p>Hello <a href="#"><?php echo escape($user->data()->username); ?></a></p>

    <ul>
        <li><a href="logout.php">Log out</a></li>
        <li><a href="update.php">Update details</a></li>
        <li><a href="changepassword.php">Change password</a></li>
    </ul>
<?php  
} else {

    echo '<p>You need to <a href="login.php">log in</a> or <a href="register.php">register</a></p>';
}  

