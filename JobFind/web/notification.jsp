

<%@page import="com.help.user"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.help.post"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.help.cp"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </head>

    <body>

        <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasWithBackdrop" aria-labelledby="offcanvasWithBackdropLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasWithBackdropLabel">Notification</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>

            </div>
            <%

                post p = null;
                List<post> list3 = new ArrayList<post>();
                user u9 = (user) session.getAttribute("user");
                String q = "select company,title,logo,upid from post order by date desc";
                PreparedStatement ps = cp.provider().prepareStatement(q);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    p = new post();
                    p.setComapny(rs.getString(1));
                    p.setTitle(rs.getString(2));
                    p.setLogo(rs.getString(3));
                    p.setUpid(rs.getInt(4));
                    list3.add(p);

                }

                if (u9 != null) {
                    for (post p6 : list3) {

                        if (u9.getId() != p6.getUpid()) {

            %>
            <div class="offcanvas-body">
                <div class="container">
                    <img src="./img/pic/<%=p6.getLogo()%>" style="width: 30px; height: 30px; border-radius: 50%; cursor: pointer"/> 
                    <div class="container mt-2">
                        <p class="font-weight-bold">job Name: <%=p6.getTitle()%></p>
                    </div>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
            </div>
            <%}
                    }
                }
            %>
        </div>

    </body>
</html>
