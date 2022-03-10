<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Traumatologie</title>
    <!-- <?php




            ob_start();

            if (isset($_SESSION['username'])) {
                header("location:../user/maisDemandes.php");
                exit();
            }

            if (isset($_SESSION['admin'])) {
                header("location:../admin/listDesUtilisateur.php");
                exit();
            }


            ?> -->


</head>

<body>

    <?php
    include("../navBar_footer/navMobile.php");
    include("../navBar_footer/nav.php");
    ?>
    <main>
        <article class="glass">
            <div class="limiter">
                <div class="">
                    <div class="">


                        <div class="titel_home">


                            <span class="">
                                Traumatologie
                            </span>
                        </div>

                        <div class="cont_home">
                            <p>
                                Est la spécialité qui couvre les lésions acquises de façon accidentelle
                                de l'appareil locomoteur (fractures, luxations, entorses, plaies,
                                lésions d'éléments nobles : artères, veines, nerfs, tendons).
                                Les patients traumatisés sont admis majoritairement après un passage aux urgences.
                            </p>

                            <br />

                        </div>
                        <div class="photos">
                            <img src="../img/entrée_CHU.jpg">
                        </div>
                        <div class="sou_cont_home">
                            <p> </p>
                        </div>

                        <div class="btns">
                            <form action="" method="POST">

                                <a href="../login/login.php?lang=en" style=" text-decoration: none;">
                                    <div class="btn1"> Login </div>
                                </a>
                            </form>

                        </div>

                    </div>
                </div>
            </div>
            </div>

            <div class="espace"></div>


        </article>
    </main>
    <!-- mobile -->
    <article class="article2">
        <div class="esp"></div>

        <div class="chu">
            <img id="chu" src="../img/entrée_CHU.jpg">

        </div>



        <div class="rect1">

            <div class="titel_home">


                <span class="">
                    Traumatologie
                </span>
            </div>

            <div class="cont_home" id="cnt_home">
                <p>
                    Est la spécialité qui couvre les lésions acquises de façon accidentelle
                    atde l'appareil locomoteur (fractures, luxations, entorses, plaies,
                    lésions d'éléments nobles : artères, veines, nerfs, tendons).
                    Les pients traumatisés sont admis majoritairement après un passage aux urgences.
                </p>

                <BR />

            </div>
            <div class="btns" id="btnn">
                <form action="" method="POST">

                    <a href="../login/login.php?lang=en" style=" text-decoration: none;">
                        <div class="btn1"> Login </div>
                    </a>
                </form>
            </div>
            <div class="espace"></div>
        </div>
    </article>

    <style>
        .chu {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 20px;
            margin-top: 20px;


        }

        #chu {
            width: 80%;
            border-radius: 20px;
        }


        .rect1 {
            width: 95%;
            height: 100%;
            background-color: rgb(223, 223, 223);
            border-radius: 20px;
            transform: translate(2.5%);


        }

        .esp {
            height: 10px;

        }

        .photos_chu {

            display: flex;
            align-items: center;
            justify-content: center;

        }

        .photos_chu img {
            width: 90%;
            border-radius: 20px;
        }



        #cnt_home p {
            font-size: 16px;
        }

        #cnt_home li {
            font-size: 16px;
        }



        #btnn {
            position: relative;


        }
    </style>



    <?php
    include("../navBar_footer/footer.php");
    include("../header/js.php");
    ?>