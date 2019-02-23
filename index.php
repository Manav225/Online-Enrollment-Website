<?php
    session_start();
    include_once 'serverside/variables.inc.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $websiteName; ?> - Home</title>
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

    <main>
        <div class="container">
            <div class="image-slider">

            </div>
            <div class="social-media">
                <h3>Like us on facebook</h3>
                <div class="fb-page" data-href="https://www.facebook.com/taguigIS/" data-height="127" data-small-header="true" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/taguigIS/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/taguigIS/">Taguig Integrated School</a></blockquote></div>
                <h3>Our Location</h3>
                <div class="mapouter"><div class="gmap_canvas"><iframe width="300" height="300" id="gmap_canvas" src="https://maps.google.com/maps?q=Taguig%20Integrated%20School&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://www.embedgooglemap.net"></a></div><style>.mapouter{text-align:right;height:300px;width:300px;}.gmap_canvas {overflow:hidden;background:none!important;height:300px;width:300px;}</style>Google Maps by <a href="https://www.embedgooglemap.net" rel="nofollow" target="_blank">Embedgooglemap.net</a></div>
            </div>
        </div>
    </main>

    <div id="events">
        <div class="container">
            <h2>News and Events</h2>
            <div class="news">
                <h3>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, ea!</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos optio provident ipsa fugiat tenetur officia, voluptatum beatae! Autem, nobis error.</p>
                <hr>
            </div>
            <div class="news">
                <h3>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, ea!</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos optio provident ipsa fugiat tenetur officia, voluptatum beatae! Autem, nobis error.</p>
                <hr>
            </div>
            <div class="news">
                <h3>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi, ea!</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos optio provident ipsa fugiat tenetur officia, voluptatum beatae! Autem, nobis error.</p>
                <hr>
            </div>
        </div>
    </div>

    <?php
        include_once "layouts/footer.php";
    ?>

</body>
</html>