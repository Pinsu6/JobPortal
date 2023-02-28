<%@page import="com.help.selectSearch"%>
<%@page import="com.help.search"%>
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
                    String job = request.getParameter("job");
                    String city1 = request.getParameter("city");
                    postInsert p1 = new postInsert();
                    selectSearch s1 = new selectSearch();
                    user u8 = (user) session.getAttribute("user");

                    if (u8 != null) {
                       
                        List<post> list = s1.getSearch(job, city1);
                      

                        for (post p2 : list) {

                            List<user> list1 = p1.getuser(p2.getUpid());
                           
                            for (user u3 : list1) {

                                

                %>

                <form action="applyServlet" method="post">
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
                                <a href="apply.jsp?id=<%=p2.getId()%>" class="btn btn-primary">Apply</a> <i class="fa fa-bookmark" aria-hidden="true" style="float:right; cursor: pointer"></i>
                            </div>
                            <%
                                }

                            %>




                            <div class="card-footer text-muted bg-white ">



                            </div>

                            <div class="card-footer text-muted bg-white ">
                                <h4 class="text-center ">Posted By: &nbsp; <a href="#" class="text-decoration-none text-dark"> <img src="img/pic/<%=u3.getPic()%> " style="width: 30px; height: 30px; border-radius: 50%; cursor: pointer" alt="can't load"/> &nbsp; <%=u3.getFname()%> <%=p2.getId()%></a></h4>

                            </div>

                            <div class="card-footer text-muted bg-white ">
                                <i class="fa fa-watch"><%=p2.getDate()%></i>

                            </div>
                        </div>

                    </div>
                    <%
                            }
                        }
                        if (job == "" && city1 == "") {
                    %>
                    <h2>No  job or city Availabel</h2>
                    <%
                            }

                        }
                    %>
                </form>
            </div>

        </div>








    </section>
    <!-- job feed end -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>


</body>

</html>