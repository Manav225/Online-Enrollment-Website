<div id="fb-root"></div>
<script async defer src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2"></script>

<header>
        <div id="top_header">
            <div class="container">
                <p>Online Portal for <?php echo $websiteName; ?></p>
                <div class="top_nav">
                    <?php
                        if(isset($_SESSION['admin_logged_in'])){
                            echo '
                                <a href="serverside/logout.inc.php">Logout</a>
                            ';
                        }
                        else{
                            echo '
                                <a href="admin.php">Admin Login</a>
                            ';
                        }
                    ?>
                    <a href="#">About Us</a>
                </div>
            </div>
        </div>
        <div id="mid_header">
            <div class="container">
                <div class="inner">
                    <div class="logo">
                        <img src="./images/logo.png" alt="Taguig Integrated School">
                    </div>
                    <div class="title">
                        <h1><?php echo $websiteName; ?></h1>
                        <p>LIWAYWAY STREET, STA. ANA TAGUIG CITY 1632</p>
                    </div>
                </div>
            </div>
        </div>
        <div id="bottom_header">
            <div class="container">
                <nav>
                    <ul>
                        <li><a href="index.php">Home</a></li>
                        <li><a href="#">Announcements</a></li>
                        <li><a href="#">Teachers</a></li>
                        <li><a href="#">Online Enrollment</a></li>

                        <?php
                            if(isset($_SESSION['admin_logged_in'])){
                                echo '<li><a href="admin_dashboard.php">Admin Dashboard</a></li>';
                            }
                        ?>

                    </ul>
                </nav>
            </div>
        </div>
    </header>