

<%@page import="com.help.post"%>
<%@page import="com.help.postInsert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            postInsert p = new postInsert();
            post p1 = (post) p.getJobById(id);
            
        %>


        <div class="container">
            <form method="post" action="Editpost_servlet?id=<%=id%>" enctype="multipart/form-data">
                <div class="form-row">
                   
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Company Name</label>
                        <input type="text" name="companyname" class="form-control" id="inputEmail4" value="<%=p1.getComapny()%>" onkeypress="return /[a-z]/i.test(event.key)">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Title</label>
                        <input type="text" name="title" class="form-control" id="inputPassword4" value="<%=p1.getTitle()%>" onkeypress="return /[a-z]/i.test(event.key)">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">salary</label>
                    <input type="text"  name="salary" class="form-control" id="inputAddress" value="<%=p1.getSalary()%>"  >
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Address</label>
                    <input type="text" name="address" class="form-control" id="inputAddress2" value="<%=p1.getAdress()%>" >
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" name="city" class="form-control" id="inputCity" value="<%=p1.getCity()%>" onkeypress="return /[a-z]/i.test(event.key)">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Company Email</label>
                        <input type="email" name="email" class="form-control" value="<%=p1.getCompanyemail()%>" id="inputCity">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="inputState">Job time</label>
                        <input type="text" name="time" class="form-control" value="<%=p1.getTime()%>" id="jobtime">
                    </div>

                </div>
                    <textarea class="form-control"   name="desc" rows="3" cols="40" ><%=p1.getDesc()%>

                </textarea>
                <div class="custom-file">
                    <input type="file" name="logo" class="custom-file-input" id="inputGroupFile01">
                    <label class="custom-file-label mt-3"    for="inputGroupFile01">Upload Company Logo <%=p1.getLogo()%></label>
                </div>
                <center>

                    <button type="submit"  class="btn btn-primary w-25 font-weight-bold mt-5">update</button>
                </center>
            </form>
        </div>

    </body>
</html>
