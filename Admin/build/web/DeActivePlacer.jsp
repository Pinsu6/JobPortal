

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
                    <th scope="col">Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Email</th>

                </tr>
            </thead>
            <tbody>
                <%
                    String q = "Select distinct upid from post";
                    PreparedStatement ps = cp.provider().prepareStatement(q);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {

                        String u = "select * from user where id='" + rs.getInt(1) + "' and placer='0'";
                        PreparedStatement ups = cp.provider().prepareStatement(u);
                        ResultSet urs = ups.executeQuery();
                        while (urs.next()) {
                %>
                <tr>
            <form action="post.jsp?id=<%=urs.getInt(1)%>" method="post">
                <th scope="row"><button type="submit" class="btn btn-primary"> <%=urs.getInt(1)%></button></th>
            </form>
            <td><%=urs.getString(2)%></td>
            <td><%=urs.getString(3)%></td>
            <td><%=urs.getString(4)%></td>
            <form action="PlacerActive?id=<%=urs.getInt(1)%>" method="post">
                <td><button type="submit" class="btn btn-primary"> Active</button></td>
            </form>
        </tr>
        <%
                }
            }
        %>


    </tbody>
</table>

</body>
</html>
