<%-- 
    Document   : error500
    Created on : Mar 12, 2020, 3:36:46 PM
    Author     : alfre
--%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <link rel="icon" type="image/png" href="images/storeico.png"/>
        <title>Error 500</title>

        <!-- Google font -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,700" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
                  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
                <![endif]-->


        <style type="text/css">
            * {
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
            }

            body {
                padding: 0;
                margin: 0;
            }

            #notfound {
                position: relative;
                height: 100vh;
            }

            #notfound .notfound {
                position: absolute;
                left: 50%;
                top: 50%;
                -webkit-transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
            }

            .notfound {
                max-width: 520px;
                width: 100%;
                text-align: center;
                line-height: 1.4;
            }

            .notfound .notfound-404 {
                height: 190px;
            }

            .notfound .notfound-404 h1 {
                font-family: 'Montserrat', sans-serif;
                font-size: 146px;
                font-weight: 700;
                margin: 0px;
                color: #232323;
            }

            .notfound .notfound-404 h1>span {
                display: inline-block;
                width: 120px;
                height: 120px;
                background-image: url('emoji.png');
                background-size: cover;
                -webkit-transform: scale(1);
                -ms-transform: scale(1);
                transform: scale(1);
                z-index: -1;
            }

            .notfound h2 {
                font-family: 'Montserrat', sans-serif;
                font-size: 22px;
                font-weight: 700;
                margin: 0;
                text-transform: uppercase;
                color: #232323;
            }

            .notfound p {
                font-family: 'Montserrat', sans-serif;
                color: #787878;
                font-weight: 300;
            }

            .notfound a {
                font-family: 'Montserrat', sans-serif;
                display: inline-block;
                padding: 12px 30px;
                font-weight: 700;
                background-color: #f99827;
                color: #fff;
                border-radius: 40px;
                text-decoration: none;
                -webkit-transition: 0.2s all;
                transition: 0.2s all;
            }

            .notfound a:hover {
                opacity: 0.8;
            }

            @media only screen and (max-width: 767px) {
                .notfound .notfound-404 {
                    height: 115px;
                }
                .notfound .notfound-404 h1 {
                    font-size: 86px;
                }
                .notfound .notfound-404 h1>span {
                    width: 86px;
                    height: 86px;
                }
            }

        </style>

    </head>

    <body>

        <div id="notfound">
            <div class="notfound">
                <div class="notfound-404">
                    <h1>5<span></span><span></span></h1>
                </div>
                <h2>No eres tu, soy yo</h2>
                <p>Sorry :(</p>
            </div>
        </div>

    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>

