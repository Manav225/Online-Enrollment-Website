<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Taguig Integrated School - Admin Login</title>
    <link rel="icon" href="images/logo.png">
    <!-- Styles -->
    <link rel="stylesheet" href="styles/main.css">
    <link rel="stylesheet" href="styles/footer.css">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
</head>
<body>
    <?php
        include_once "layouts/header.php";
    ?>

    <div id="admin_login">
        <div class="container">
            <form action="serverside/verify.php" method="POST">
                <div class="form_inner">
                    <h2>Admin Login</h2>
                    <table>
                        <tr>
                            <td>User Name: </td><td><input type="text" name="username"></td>
                        </tr>
                        <tr>
                            <td>Password: </td><td><input type="password" name="password"></td>
                        </tr>
                    </table>
                    <input type="submit" name="submit" value="Log In">
                </div>
            </form>
        </div>
    </div>

    <?php
        include_once "layouts/footer.php";
    ?>
</body>
</html>