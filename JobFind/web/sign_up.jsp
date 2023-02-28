<%@page import="com.help.msg"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page errorPage="Error.jsp" %>  

<link rel="stylesheet" href="css/login.css"/>
<script src="./script/validation.js"></script>
<!-- //web font -->

<body>
    <!-- main -->
    <div class="main-w3layouts wrapper">
        
        <h1> Sign Up </h1>
         <%
                String error;
                String css;
                msg e = (msg) session.getAttribute("e");
                if (e != null) {
                    error = e.getMessage();
                    css = e.getCss();

            %>
            
            <h2 class="alert <%=css%> text-center w-25 p-3 container" role="alert">
                <%=error%>
                <%
                        session.removeAttribute("e");
                    }
                %>
            </h2>
        <div class="main-agileinfo">
           
            <div class="agileits-top">
                <form  name="myform" action="register" method="post" onsubmit="return validateform()">
                    <input class="text" type="text" name="Fname" placeholder="First Name" required="" maxlength="10" onkeypress="return /[a-z]/i.test(event.key)"><br>
                    <input class="text" type="text" name="Lname" placeholder="Last Name" required="" maxlength="10" onkeypress="return /[a-z]/i.test(event.key)">
                    <input class="text email" type="email" name="Email" placeholder="Email" required="" pattern="^[_a-z0-9-]+(/.[_a-z0-9-]+)*@[_a-z0-9-]+(\.[_a-z0-9-]+)*(.\[a-z]{2,4})$">

                    <input class="text" type="password" name="password" placeholder="Password" required="">

                    <div class="wthree-text">

                        <div class="clear"> </div>
                    </div>
                    <input type="submit" value="Next">
                </form>
                <p>Already have an Account? <a href="login.jsp"> Login Now!</a></p>
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

</body>
