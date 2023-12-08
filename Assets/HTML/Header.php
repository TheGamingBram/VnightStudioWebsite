<!DOCTYPE html>

<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Virtual Night Studio's - <?=$PageName?></title>
        <link rel="icon" type="image/x-icon" href="./Assets/IMG/VnightStudioICON.ico">
        <meta content="Virtual Night Studios - <?=$PageName?>" property="og:title" />
        <meta content="https://vnight-studios.xyz/Assets/IMG/VnightStudioICON.png" property="og:image" />
        <meta content="#6d738d" data-react-helmet="true" name="theme-color" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="./Assets/CSS/Index-style.css">
    </head>
    <body>
        <div class="landingpage">
            <div class="navbar">
                <a class="navlogo">Virtual Night Studio's</a>
                <div class="navlinkwrap">
                    <span class="navlink"><a href="index.php">Home</a></span>
                    <span class="navlink"><a href="MarioKartVirtualNight/">Mario Kart Virtual Night</a></span>
                    <span class="navlink"><a href="Projects.php">Our Projects</a></span>
                    <span class="navlink"><a href="Aboutus.php">About Us</a></span>
                </div>
                    <!-- LOGIN STUFF FOR LATER USE -->
                    <div class="buttonwrap">
                        <?php
                            if(isset($_SESSION['LOGIN_VN_ID'])){
                                echo "<a href='Account.php'><button class='createbtn'>MY ACCOUNT</button></a>";
                            }else{
                                echo "<a href='login.php'><button class='createbtn'>SIGN IN / LOG IN</button></a>";
                            }
                        ?>
                        <!-- <a href="login.php"><button class="createbtn">SIGN IN / LOG IN</button></a>
                        <button class="createbtn selectedbtn">My Account</button> -->
                    </div> 
            </div>