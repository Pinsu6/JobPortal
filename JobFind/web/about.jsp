
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="header.jsp"/>
<jsp:include page="navbar.jsp"/>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About us page html</title>

        <style>

            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: rgb(255, 255, 255);
                margin: 0;
                padding: 0;
            }



            .wrapper {
                display: flex;
                flex-direction: column;
                align-items: center;
                text-align: center;
                background: rgb(223, 215, 215);
                margin: 20px auto;
                padding: 15px 30px;
                width: auto;
                box-shadow: 0 0 5px black;
            }

            .hr {
                display: flex;
                align-items: center;
            }

            hr {
                width: 30px;
                height: 1px;
                background: black;
                margin: 0 15px;
            }

            h2 {
                font-size: 25px;
                font-weight: normal;
                text-transform: uppercase;
            }

            .mission-txt {
                font-size: 18px;
                font-weight: 500px;
                font-style: italic;
                margin-top: 0;
            }

            div img {
                width: 150px;
                filter: drop-shadow(0 10px 5px black);
            }

            p {
                text-align: justify;
            }

            .faculties {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }

            .unit {
                margin: 25px;
                width: 200px;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .unit img {
                border-radius: 100px;
                width: 150px;
                height: 150px;
                margin-bottom: 10px;
            }

            .unit p {
                text-align: left;
                margin: 2px;
            }

            .unit p:first-of-type {
                font-weight: bolder;
                margin-bottom: 5px;
            }

            @media screen and (max-width:820px) {
                .wrapper {
                    width: 80%;
                    padding: 5px 30px;
                }
            }

        </style>

    </head>

    <body>

        <div class="container">

            <div class="wrapper">
                <div class="hr">
                    <hr>
                    <h2>Our Mission</h2>
                    <hr>
                </div>

                <p class="mission-txt">"To Provide Quality Education at Low Cost"</p>

            </div>

            <div class="wrapper">
                <h2>About</h2>
                <div>
                    <img src="https://vidyasheela.com/web-contents/website-components/About-Us-Pages/responsive-about-us-page-html/teaching.png" alt="img">
                    <p>A school is an educational institution designed to provide learning spaces and learning environments for the teaching of students under the direction of teachers. Most countries have systems of formal education, which is sometimes compulsory.
                        teenagers who have completed primary education. An institution where higher education is taught, is commonly called a university college or university. </p>
                    <p>A school is an educational institution designed to provide learning spaces and learning environments for the teaching of students under the direction of teachers. Most countries have systems of formal education, which is sometimes compulsory.
                        teenagers who have completed primary education. An institution where higher education is taught, is commonly called a university college or university. </p>

                </div>
            </div>

            <div class="wrapper">
                <h2>Faculties</h2>
                <div class="faculties">
                    <div class="unit">
                        <img src="https://vidyasheela.com/web-contents/website-components/About-Us-Pages/responsive-about-us-page-html/Director.jpg" alt="">
                        <p>Jona Chen, Director</p>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus unde aliquid laborum voluptatum distinctio nobis?'</p>

                    </div>
                    <div class="unit">
                        <img src="https://vidyasheela.com/web-contents/website-components/About-Us-Pages/responsive-about-us-page-html/Principal.jpg" alt="">
                        <p>Mathew Tram, Principal</p>
                        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus unde aliquid laborum voluptatum distinctio nobis?'</p>

                    </div>
                    <!--                    <div class="unit">
                                            <img src="https://vidyasheela.com/web-contents/website-components/About-Us-Pages/responsive-about-us-page-html/vice-principal.jpg" alt="">
                                            <p>Lawn Sethi, Vice Principal</p>
                                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Natus unde aliquid laborum voluptatum distinctio nobis?'</p>
                                        </div>-->
                </div>
            </div>

        </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
    </body>

</html>
