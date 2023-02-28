

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.List"%>
<%@page import="com.help.post"%>
<%@page import="com.help.apply"%>
<%@page import="com.help.user"%>
<%@page import="com.help.postInsert"%>
<%@page import="com.help.Bookmark"%>
<%@page import="com.help.cp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.servlet.bookmark"%>
<jsp:include page="header.jsp"/>
<%@include file="navbar.jsp" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>bookmark Page</title>
    </head>
    <body>

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
                             user u8 = (user) session.getAttribute("user");
                        //user_id!=post_id
                        Bookmark b = null;
                        List<post> list = null;
                        postInsert p1 = null;
                        String bq = "select * from bookmark where pbid='"+u8.getId()+"'";

                        PreparedStatement pq = cp.provider().prepareStatement(bq);

                        Statement st = cp.provider().createStatement();

                        ResultSet rb = pq.executeQuery();

                        while (rb.next()) {
                            b = new Bookmark();
                           b.setId(rb.getInt(1));
                           b.setBuid(rb.getInt(2));
                           b.setPbid(rb.getInt(3));

                        }

                        p1 = new postInsert();
                        list = p1.getjobbybookmark(b.getBuid());
                       
                        apply a = p1.getapply(u8.getId());
                      
                        if (u8 != null) {

                            // List<user> list1 = p1.getuser(p3.getUpid());
                          
                            for (post p2 : list) {
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




                                <a href="Apply?id=<%=p2.getId()%>"  class="btn btn-primary">Apply</a> 


                            </div>
                            <%                                }


                            %>




                            <div class="card-footer text-muted bg-white ">



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


                    %>


                </div>

            </div>








        </section>
    </body>
</html>
