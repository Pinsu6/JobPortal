
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="navbar.jsp"/>
<jsp:include page="header.jsp" />
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>


<style>
    p {
        font-style: italic;
        font-size: large;
        font-family: emoji;
    }

    .container {
    }

    .back {
        background-color: rgba(35, 45, 57, 0.8);
        opacity: 0.3;
        color: white;
        height: 70vh;
    }

    .style {
        padding: 5px;
    }

    .overlay {
        position: absolute;
        bottom: 100%;
        left: 0;
        right: 0;
        background-color: white;
        opacity: 75%;
        overflow: hidden;
        width: 100%;
        height: 0;
        transition: .5s ease;
    }

    .container:hover .overlay {
        bottom: 0;
        height: 100%;
    }

    .text1 {
        color: rgb(6, 6, 6);

        font-size: 15px;
        font-weight: bold;
        position: absolute;
        top: 50%;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        text-align: center;
    }
</style>





<body>
  
    <!-- slider -->
    <div id="carouselExampleCaptions" class="carousel slide  " data-bs-ride="carousel">
        <div class="carousel-indicators ">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./img/7.jpg" class="w-100 d-block img-fluid" style="height: 95vh;" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Trust</h5>
                    <p>Trust is most importent for humans we are here for you </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="./img/5.jpg" class="d-block w-100 img-fluid" style="height: 95vh;" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Hire</h5>
                    <p>We have best comapny and 1000+ company here </p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="./img/4.jpg" class="d-block w-100 img-fluid" style="height: 95vh;" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Maang</h5>
                    <p>Yes we have Maang meta apple amazon netflix google</p>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- slider end -->
    <!-- row  -->
    <div class="container my-5">
        <div class="row  text-center my-3">

            <h2>our services</h2>


        </div>

    </div>

    <!-- row end -->
    <!-- card start -->
    <div class="row row-cols-1 row-cols-md-3 g-4 container-fluid">
        <div class="col-md-4 container">
            <div class="card  ">

                <img src="./img/2.jpg" class="card-img-top" style="height: 39vh;" alt="...">
                <div class="overlay">
                    <div class="text1">We have best partner and yes we have maang company
                        meta amazon apple netflix google
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-4 container">
            <div class="card  ">
                <img src="./img/trust.jpg" class="card-img-top" alt="...">
                <div class="overlay">
                    <div class="text1">We are here for you we are not share your data in any cost we
                        respact your privacy we respact your personal life
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 container">
            <div class="card  ">
                <img src="./img/hr.jpg" class="card-img-top" alt="...">
                <div class="overlay">
                    <div class="text1">We have best hr (human resources) they connect you with best company</div>
                </div>
            </div>
        </div>
    </div>
    <!-- card end -->
    <!-- about -->

    <div class="card bg-dark text-white" style="margin-top: 100px;">
        <img src="./img/about.jpg" class="card-img back img-fluid" alt="about">
        <div class="card-img-overlay">
            <center>
                <h3 class="card-title mt-3">About us</h3>
            </center>
            <p class="card-text text-center mt-5 p-5">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eum autem
                architecto
                possimus accusantium odit in aliquid, ratione veniam aut. Ea saepe autem magni at accusamus beatae dignissimos
                deserunt minus velit natus incidunt harum recusandae ipsum quia adipisci, voluptas distinctio error vero
                cumque
                dolores sint doloribus atque odio? Voluptas, mollitia neque. Lorem ipsum dolor sit, amet consectetur adipisicing
                elit. Autem exercitationem, nostrum, velit magni ea ad, blanditiis obcaecati ducimus aperiam consequuntur
                dolores. Rem quod unde perferendis natus facilis iste quidem ab cumque, porro quos earum, reprehenderit totam,
                exercitationem aliquam assumenda voluptatem. Ab recusandae nemo ipsam sapiente et corrupti, pariatur veritatis
                nostrum similique magnam obcaecati sunt deleniti quam doloremque ea in inventore!</p>

        </div>
    </div>

    <!-- about end -->
    <!-- conntect us  -->
    <div class="card bg-dark text-white" style="margin-top: 100px;  ">
        <img src="./img/contect.jpg" class="card-img back img-fluid" style="height: 50vh;" alt="about">
        <div class="card-img-overlay">
            <center>
                <h3 class="card-title mt-3">contect us</h3>
            </center>
            <p class="card-text text-center mt-5 p-5"> message us for your any problem any time
                24*7 services available

            </p>
            <center>
                <button type="button" class="btn btn-info">Contect Us</button>
            </center>
        </div>

    </div>

    <!-- contect us end -->
    <!-- footer -->
    <!-- Remove the container if you want to extend the Footer to full width. -->
    <!-- Remove the container if you want to extend the Footer to full width. -->
    <div style="margin-top: 100px;">

        <footer class="text-center text-lg-start" style="background-color: black;">
            <div class="container d-flex justify-content-center py-5">
                <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                    <i class="fa fa-facebook-f"></i>
                </button>
                <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                    <i class="fa fa-youtube"></i>
                </button>
                <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                    <i class="fa fa-instagram"></i>
                </button>
                <button type="button" class="btn btn-primary btn-lg btn-floating mx-2" style="background-color: #54456b;">
                    <i class="fa fa-twitter"></i>
                </button>
            </div>

            <!-- Copyright -->
            <div class="text-center text-white p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                © 2023 Copyright: job find

            </div>
            <!-- Copyright -->
        </footer>

    </div>


    <!-- footer end -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

