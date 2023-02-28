
<%@page import="com.help.user"%>
<%@include file="profile.jsp" %>
<%@include file="notification.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    
    <div class="container-fluid">
        <a class="navbar-brand" href="index.jsp">
            <!--Job Find-->
            <img src="./img/logo1.png" width="120" height="50" class="d-inline-block align-top img1" alt="">

        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active px-4  hover-underline-animation" aria-current="page" href="home.jsp">Find
                        job</a>
                </li>
              

                <li class="nav-item">
                    <a class="nav-link px-4 hover-underline-animation" href="resume.jsp">Create resume</a>
                </li>
                   <li class="nav-item">
                    <a class="nav-link px-4 hover-underline-animation" href="post.jsp">Post Job</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-4 hover-underline-animation" href="about.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link px-4 hover-underline-animation" href="contact.jsp">Contact Us</a>
                </li>
                 <li class="nav-item">
                    <a class="nav-link px-4 hover-underline-animation" href="bookmark.jsp">My Bookmark </a>
                </li>
            </ul>
            <%                if (u == null) {
            %>
            <ul class="navbar-nav mr-right">


                <li class="nav-item   px-4 ">
                    <a class="nav-link  hover-underline-animation" href="sign_up.jsp">sign up</a>
                </li>
                <li class="nav-item   px-4  ">
                    <a class="nav-link  hover-underline-animation" href="login.jsp">Login</a>
                </li>
            </ul>
            <%
            } if(u!=null) {
              
            
            %>
            
            <ul class="navbar-nav mr-right">
                <li class="nav-item  my-2 px-4 text-white ">
                    <i class="fa fa-bell text " data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBackdrop" aria-controls="offcanvasWithBackdrop"></i>
                </li>

              
                      <li class="nav-item my-2  px-4 text-white  " data-bs-toggle="modal" data-bs-target="#profile"> 
                  <img src="./img/pic/<%=img%>" style="width: 30px; height: 30px; border-radius: 50%; cursor: pointer" data-bs-toggle="modal" data-bs-target="#profile" alt="alt"/> <%=name%>
                </li>
                
                <li class="nav-item   px-4 ">
                    <a class="nav-link  hover-underline-animation" href="myjobpannel.jsp">My Job Panel</a>
                </li>
                
                <li class="nav-item   px-4 ">
                    <a class="nav-link  hover-underline-animation" href="logout">Log-out</a>
                </li>
            </ul>
            <%}%>





        </div>
            
    </div>



    
</nav>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>