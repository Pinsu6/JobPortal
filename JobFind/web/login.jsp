<%@page import="com.help.msg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ page errorPage="Error.jsp" %>--%>  

<link rel="stylesheet" href="css/login.css"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<body>

    <!-- main -->
    <div class="main-w3layouts wrapper">
        <h1 style="color:white"> Login </h1>
        <div class="main-agileinfo">
            <div class="agileits-top">
                <%
                    String error;
                    String css;

                    msg m = (msg) session.getAttribute("error");
                    if (m != null) {
                        error = m.getMessage();
                        css = m.getCss();
                %>

                <div class="alert <%=css%>" role="alert">
                    <%=error%>
                </div>
                <%
                        session.removeAttribute("error");
                    }


                %>
                <form action="login" method="post">

                    <input class="text email" type="email" name="Email" placeholder="Email" required="">
                    <input class="text" type="password" name="password" placeholder="Password" required="">

                    <div class="wthree-text">

                        <div class="clear"> </div>
                    </div>
                    <input type="submit" value="Login">
                    <p>Don't have an Account? <a href="sign_up.jsp">sign up!</a></p>
                </form>

            </div>
        </div>

        <ul class="colorlib-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <!-- //main -->
</body>
