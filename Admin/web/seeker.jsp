

<%@page import="java.sql.ResultSet"%>
<%@page import="com.help.cp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <title>Total User Page</title>
    </head>
    <body>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Post_id</th>
                    <th scope="col">User_id</th>
                    <th scope="col">Upload_id</th>
                   
                </tr>
            </thead>
            <tbody>
                <%
                    String q = "Select * from apply";
                    PreparedStatement ps = cp.provider().prepareStatement(q);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                %>
                <tr>
                  
                    <th scope="row"> <%=rs.getInt(1)%></th>
                  
                     <form action="post.jsp?id=<%=rs.getInt(2)%>" method="post">
                    <th scope="row"><button type="submit" class="btn btn-primary"> <%=rs.getInt(2)%></button></th>
                    </form>
                  
                     <form action="UserInfo.jsp?id=<%=rs.getInt(3)%>" method="post">
                    <th scope="row"><button type="submit" class="btn btn-primary"> <%=rs.getInt(3)%></button></th>
                    </form>                   
                  <form action="UserInfo.jsp?id=<%=rs.getInt(4)%>" method="post">
                    <th scope="row"><button type="submit" class="btn btn-primary"> <%=rs.getInt(4)%></button></th>
                    </form>   
                    
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>

    </body>
</html>
