<%@page import="com.help.apply"%>
<%@page import="com.help.postInsert"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="com.help.post"%>
<%@page import="com.help.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<%@include file="navbar.jsp" %> 

<%@include file="search_bar.jsp" %>

<body>


    <!-- search box start -->



    <!-- search box end -->

    <!-- job feed start -->
    <section class="bg-light">
        <!-- first feed -->
        <div class="h2" >
            <center >
                Job Feed
            </center>
        </div>

        <div class="container ">
            <div class="row p-2">
                <%
                    //user_id!=post_id
                    postInsert p1 = new postInsert();
                    user u8 = (user) session.getAttribute("user");
                    apply a = p1.getapply(u8.getId());
                    if (u8 != null) {

                        List<post> list = p1.getjob();

                        // List<user> list1 = p1.getuser(p3.getUpid());
                        for (post p2 : list) {

                            List<user> list1 = p1.getuser(p2.getUpid());
                            for (user u3 : list1) {
                                if (a.getUser_id() != a.getPost_id())//<- aa kaai kaam noo nathi in future aane kaadhvanu chhe
                                {

                %>



                <div class="col-sm-12 my-4 ">
                    <div class="card">
                        <div class="card-body">

                            <h3 class="card-title">  <img src="./img/pic/<%=p2.getLogo()%>" style="width: 60px; height: 60px; border-radius: 50%; cursor: pointer"  alt="alt"/> <%=p2.getComapny()%></h3>
                            <hr>

                            <a href="#" class="text-dark">
                                <h5 class="card-title font-weight-bold"><%=p2.getTitle()%></h5>
                            </a>
                            <h5 class="card-title"> <i class="fa fa-map text "></i> <%=p2.getCity()%></h5>
                            <div class="rang ">
                                <h5 class="card-title "><i class="fa fa-money text "> &#8377; <%=p2.getSalary()%> a month
                                        &#10004;</i></h5>
                            </div>
                            <div class="bg-light">
                                <h5 class="card-title"> <i class="fa fa-briefcase"><%=p2.getTime()%></i></h5>
                            </div>
                            <div class="container">
                                <p class="card-text text-justify col-sm-8" ><%=p2.getDesc()%> </p>

                            </div>


                        </div>

                        <%

                            if (p2.getUpid() != u8.getId()) {

                        %>

                        <div class="card-footer text-muted bg-white">
                          


                            <form method="POST"  action="bookmark?id=<%=p2.getId()%>">
                                  <a href="Apply?id=<%=p2.getId()%>"  class="btn btn-primary">Apply</a> 
                                <button type ="submit" class="btn btn-primary" style="float:right;"> <i class="fa fa-bookmark"   aria-hidden="true"  cursor: pointer"></i></button>
                            </form>
                        </div>
                        <%                                }


                        %>




                        <div class="card-footer text-muted bg-white ">



                        </div>

                        <div class="card-footer text-muted bg-white ">
                            <h4 class="text-center ">Posted By: &nbsp; <a href="#" class="text-decoration-none text-dark"> <img src="./img/pic/<%=u3.getPic()%> " style="width: 30px; height: 30px; border-radius: 50%; cursor: pointer" alt="can't load"/> &nbsp; <%=u3.getFname()%> <br> company Email is &nbsp; :<%=p2.getCompanyemail()%></a></h4>

                        </div>

                        <div class="card-footer text-muted bg-white ">
                            <i class="fa fa-watch"><%=p2.getDate()%></i>

                        </div>
                    </div>

                </div>
                <%
                                }
                            }
                        }
                    }

                %>


            </div>

        </div>








    </section>
    <!-- job feed end -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function (event) {
            console.log("loading...");
            $('#bookmarkform').on('submit', function (event) {
                event.preventDefault(); //servlet maa redirect nay thava de



                let form = new FormData(this);//form no data aama aavi jase
                
                $("#bookmark").show();
                //send to servlet
                $.ajax({
                    url: "bookmark",
                    type: 'POST',
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        console.log(data); //data sucess insert thay tyare
                        $("#bookmark").hide();
                       
                        swal
                                ("Done", "bookmark successfully!", "success")
                                .then((value) => {
                                    
                                });


                        //  window.location = "login.jsp";

                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(jqXHR);
                        $("#bookmark").show();
                        
                        swal("not done", "something wrong", "error");
                    },
                    processData: false,
                    contentType: false
                });
            });
        });
    </script>

</body>

</html>