
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.help.msg"%>
<%@page import="com.servlet.detailInsert"%>
<%@include file="navbar.jsp" %> 
<jsp:include page="header.jsp"/>

<%
    user u6 = (user) session.getAttribute("user");
    detailInsert u7 = (detailInsert) session.getAttribute("qualification");
    String Name = null;
    String Lname = null;
    String Email = null;
    String City = null;
    String University = null;
    String School = null;
    String Adress = null;
    String State = null;
    String Zip = null;
    String Qualification = null;
    String Img = null;
    if (u6 != null || u7 != null) {
        Name = u6.getFname();
        Lname = u6.getLname();
        Email = u6.getEmail();
        Img = u6.getPic();
        University = u7.getUniversity();
        City = u7.getCity();
        School = u7.getSchool();
        Adress = u7.getAdress();
        State = u7.getState();
        Zip = u7.getZip();
        Qualification = u7.getQualification();

    }

%>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="./dom-to-image.js"></script>
        <title>Resume</title>
    </head>
    
    <body >

        <div class="container text-center ">
            <h2>Resume</h2>
        </div>
        <div class="box">
            <div class="container text-center my-5 " style="border-style: solid; color: black;" id="the-content">

                <img src="./img/pic/<%=Img%>" class="mt-2 img-fluid" style="width: 250px; height: 250px;" alt="">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">First Name</label>
                        <input type="text" class="form-control" placeholder="Name" disabled="" value="<%=Name%>" >
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Last Name</label>
                        <input type="text" class="form-control" placeholder="Last Name" disabled="" value="<%=Lname%>">
                    </div>
                </div>
                <div class="form-group">

                    <label for="inputEmail4">Email</label>
                    <input type="email" class="form-control" id="inputEmail4" disabled="" placeholder="Email" value="<%=Email%>">


                </div>
                <div class="form-group">
                    <label for="inputAddress">Address</label>
                    <input type="text" disabled="" class="form-control" id="inputAddress" placeholder="1234 Main St" value="<%=Adress%>">
                </div>
                <div class="form-group">
                    <label for="inputAddress2">About Me</label>
                    <textarea class="form-control" name="AboutMe" rows="3" cols="40">

                    </textarea>

                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputCity">City</label>
                        <input type="text" disabled="" class="form-control" id="inputCity" value="<%=City%>">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                        <input type="text" class="form-control" disabled="" id="inputState" value="<%=State%>"/>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputState">Education</label>
                        <input type="text" class="form-control" disabled="" id="Education" value="<%=Qualification%>">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" class="form-control" disabled="" id="inputZip" value="<%=Zip%>">
                    </div>
                </div>
                <div class="form-group">

                    <label for="inputSkill">Skill</label>
                    <textarea class="form-control" name="skill" rows="4" cols="20">

                    </textarea>

                </div>



            </div>
            </div>
                <center class="mb-3">
                    <button type="submit" class="btn btn-primary  text-center" id="dw_bt">Download</button>
                </center>

                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script>

                <!--jquery-->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.js"></script>


                <script>
                    var ticket = document.getElementsByClassName("box")[0];
                    var download_button = document.getElementById("dw_bt");

                    download_button.addEventListener("click", () => {
                        domtoimage.toSvg(ticket).then((data) => {
                            var link = document.createElement("a");
                            link.download = "my-resume.svg";
                            link.href = data;
                            link.click();
                        });
                    });
                </script>
                </body>

                </html>