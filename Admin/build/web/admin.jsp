<%@page import="java.sql.ResultSet"%>
<%@page import="com.help.cp"%>
<%@page import="java.sql.PreparedStatement"%>
<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <style>
            .a{
                background-color: #3182ce;
                background-repeat: no-repeat;
            }

        </style>
    </head>

    <body class="a" >

        <div class="container" style="background-color: white">
            <!--for user-->
            <%
                String Tuser = "select count(id) from user";
                PreparedStatement Tups = cp.provider().prepareStatement(Tuser);
                ResultSet Urs = Tups.executeQuery();
                while (Urs.next()) {
            %>
            <div class="row shadow-lg p-3 mb-5 bg-body rounded mt-3 ">
                <a href="TotalUser.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body" >
                            <h5 class="card-title text-center">Total user</h5>

                            <h3 class="card-text text-center"><%=Urs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>


                <!--for post-->
                <%
                    String Tpost = "select count(id) from post";
                    PreparedStatement Tpps = cp.provider().prepareStatement(Tpost);
                    ResultSet Prs = Tpps.executeQuery();
                    while (Prs.next()) {
                %>
                <a href="TotalPost.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">Total post</h5>

                            <h3 class="card-text text-center"><%=Prs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>


                <!--for job seeker-->
                <%
                    String Sseeker = "select count(id) from apply";
                    PreparedStatement sps = cp.provider().prepareStatement(Sseeker);
                    ResultSet Srs = sps.executeQuery();
                    while (Srs.next()) {
                %>
                <a href="seeker.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">Job seeker</h5>

                            <h3 class="card-text text-center"><%=Srs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>
                <!--job placer-->
                <%
                    String placer = "select  count(DISTINCT upid) from post where status='active'";
                    PreparedStatement pps = cp.provider().prepareStatement(placer);
                    ResultSet Pprs = pps.executeQuery();
                    while (Pprs.next()) {
                      
                %>
                <a href="placer.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">Job placer</h5>

                            <h3 class="card-text text-center"><%=Pprs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                        
                    }
                %>

                <!--left user-->
                <%
                    String left = "select count(id) from user where  status ='1'";
                    PreparedStatement lps = cp.provider().prepareStatement(left);
                    ResultSet lrs = lps.executeQuery();
                    while (lrs.next()) {
                %>
                <a href="leftUser.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">Active user</h5>

                            <h3 class="card-text text-center"><%=lrs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>
                <!--active post-->

                <%
                    String Apost = "select count(id) from post where  status ='active'";
                    PreparedStatement aps = cp.provider().prepareStatement(Apost);
                    ResultSet aprs = aps.executeQuery();
                    while (aprs.next()) {
                %>
                <a href="activepost.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">Active Post</h5>

                            <h3 class="card-text text-center"><%=aprs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>
                <!--blocked user-->
                <%
                    String bloked = "select count(id) from user where  status ='0'";
                    PreparedStatement bps = cp.provider().prepareStatement(bloked);
                    ResultSet bprs = bps.executeQuery();
                    while (bprs.next()) {
                %>
                <a href="blocke.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">Blocked User</h5>

                            <h3 class="card-text text-center"><%=bprs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>

                <!--Deactive post-->
                <%
                    String Dpost = "select count(id) from post where  status ='Deactive'";
                    PreparedStatement Dps = cp.provider().prepareStatement(Dpost);
                    ResultSet Drs = Dps.executeQuery();
                    while (Drs.next()) {
                %>
                <a href="Deactive.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">De active Post</h5>

                            <h3 class="card-text text-center"><%=Drs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>
                
                <!--Deactive Placer-->
                 <%
                    String Dplacer = "select count(id) from user where  placer ='0'";
                    PreparedStatement Dpps = cp.provider().prepareStatement(Dplacer);
                    ResultSet Dprs = Dpps.executeQuery();
                    while (Dprs.next()) {
                %>
                <a href="DeActivePlacer.jsp" style="text-decoration: none"> <div class="card m-3 p-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title text-center">De active Placer</h5>

                            <h3 class="card-text text-center"><%=Dprs.getInt(1)%></h3>

                        </div>
                    </div>
                </a>
                <%
                    }
                %>
                
            </div>
        </div>
        <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

        <!-- Option 2: Separate Popper and Bootstrap JS -->
        <!--
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        -->
    </body>
</html>