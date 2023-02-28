

<%@page import="com.help.resume"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   resume r = (resume) session.getAttribute("resume");
   String resume=null;
   if(r!=null)
   {
      resume=r.getResume();
   }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <img src="<%=resume%>" alt="alt"/>
    </body>
</html>
