
<%@page import="java.util.List"%>
<%@page import="com.help.request"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.help.postInsert"%>
<%@page import="java.util.List"%>
<%@page import="com.help.post"%>
<%@page import="com.help.postInsert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<jsp:include page="header.jsp"/>
<jsp:include page="sidebar.jsp"/>

<html>
 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </head>
    <div id="wrapper">
    
        <div class="overlay"></div>

        <!-- Sidebar -->
      
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
          
            
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        
                            <%
                                postInsert p1 = new postInsert();
                                user u8 = (user) session.getAttribute("user");
                                if (u8 != null) {

                                    List<post> list = p1.getjob();

                                    // List<user> list1 = p1.getuser(p3.getUpid());
                                    for (post p2 : list) {

                                        List<user> list1 = p1.getuser(p2.getUpid());
                                        for (user u3 : list1) {
                                            if (p2.getUpid() == u8.getId()) {
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





                                    <div class="card-footer text-muted bg-white ">



                                    </div>

                                    <div class="card-footer text-muted bg-white ">
                                        
                                       
                                        
                                      
                                       <form action="Delete?id=<%=p2.getId()%>" method="post">
                                       <a href="Edit.jsp?id=<%=p2.getId()%>" class="btn btn-primary">Edit</a>
                                       <button type="submit" class="btn btn-primary" style="float:right; ">De Active</button>
                                          </form>

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
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->
    
</html>
