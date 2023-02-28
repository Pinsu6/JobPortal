

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
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
    </head>
    <body>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Last</th>
                    <th scope="col">Email</th>
                    <th scope="col">password</th>

                </tr>
            </thead>
            <tbody>
                <%
                    int id = Integer.parseInt(request.getParameter("id"));
                    String q = "select *  from user where id='" + id + "'";
                    PreparedStatement ps = cp.provider().prepareStatement(q);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                %>
                <tr>
                    <form action="Update?id=<%=rs.getInt(1)%>" method="post">
                    <th scope="row"><%=rs.getInt(1)%></th>
                    <td><input type="text" name="name" value="<%=rs.getString(2)%>" onkeypress="return /[a-z]/i.test(event.key)" required="" maxlength="12"/> </td>
                    <td><input type="text" name="last" value="<%=rs.getString(3)%>" onkeypress="return /[a-z]/i.test(event.key)" required="" maxlength="12"/> </td>
                    <td><input type="email" name="email" value="<%=rs.getString(4)%>" onkeypress="return /[a-z]/i.test(event.key)" required="" maxlength="40"/> </td>
                    <td><input type="text" name="password" value="<%=rs.getString(5)%>" required="" maxlength="8"/> </td>



                </tr>

            
                <th scope="row"><button type="submit" class="btn btn-primary">Update</button></th>
            </form>

            <%

                }
            %>
        </tbody>
    </table>
    <h3 class="text-center mt-3">User's Post</h3>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">id</th>
                <th scope="col">Company</th>
                <th scope="col">Title</th>
                <th scope="col">Salary</th>
                <th scope="col">Address</th>
                <th scope="col">City</th>
                <th scope="col">Company Email</th>
                <th scope="col">time</th>
            </tr>
        </thead>
        <tbody>
            <%
                String q1 = "select *  from post where upid='" + id + "'";
                PreparedStatement ps1 = cp.provider().prepareStatement(q1);
                ResultSet rs1 = ps1.executeQuery();
                while (rs1.next()) {
            %>
            <tr>
                <th scope="row"><%=rs1.getInt(1)%></th>
                <td><%=rs1.getString(2)%></td>
                <td><%=rs1.getString(3)%></td>
                <td><%=rs1.getString(4)%></td>
                <td><%=rs1.getString(5)%></td>
                <td><%=rs1.getString(6)%></td>
                <td><%=rs1.getString(7)%></td>
                <td><%=rs1.getString(8)%></td>
            </tr>
            <%

                }
            %>

        </tbody>
    </table>
</body>
</html>
