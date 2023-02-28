
<%@page import="java.sql.*"%>
<%@page import="com.help.*"%>
<%@page import="com.help.apply"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>

<jsp:include page="sidebar.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


    </head>
    <body>
        <%
            user u99 = (user) session.getAttribute("user");
            try {
                post p99 = new post();
                apply a99 = new apply();

                String q99 = "select id,post_id,user_id from apply where upload_id='" + u99.getId() + "' and status='accept'";
                PreparedStatement ps99 = cp.provider().prepareStatement(q99);
                ResultSet rs99 = ps99.executeQuery();

                while (rs99.next()) {
                    a99.setId(rs99.getInt(1));
                    a99.setPost_id(rs99.getInt(2));
                    a99.setUser_id(rs99.getInt(3));

                    //for post title
                    String post_title = "select title from post  where id ='" + a99.getPost_id() + "'";
                    PreparedStatement post_prepare = cp.provider().prepareStatement(post_title);
                    ResultSet postresult = post_prepare.executeQuery();
                    while (postresult.next()) {
                        p99.setTitle(postresult.getString(1));
                        String user_name = "select fname,resume from user where id ='" + a99.getUser_id() + "'";

                        PreparedStatement user_prepare = cp.provider().prepareStatement(user_name);
                        ResultSet userresult = user_prepare.executeQuery();
                        while (userresult.next()) {

                            a99.setUsername(userresult.getString(1));
                            a99.setResume(userresult.getString(2));


        %>
        <div class="container">
            <div class="card mt-2">
                <div class="card-header">
                    Request
                </div>
                <div class="card-body">
                    <blockquote class="blockquote mb-0">
                        <p><%=p99.getTitle()%></p>
                        <footer class="blockquote-footer"><%=a99.getUsername()%> &nbsp;<cite title="Source Title">&nbsp;<a href=""><%=a99.getResume()%></a></cite>
                            <form method="post" action="removeServlet?id=<%=a99.getId()%>">
                                <button class="btn btn-danger" type="submit" style="float:right;">Remove</button>
                            </form>
                        </footer>
                    </blockquote>
                </div>
            </div>
        </div>
        <%                }
                    }
                }
            } catch (Exception e) {
                System.out.println("from request " + e);
            }

        %>

    </body>
</html>
