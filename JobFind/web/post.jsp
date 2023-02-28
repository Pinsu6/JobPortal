
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="navbar.jsp"/>
<jsp:include page="header.jsp"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container mt-3">
            <form method="post" action="postServlet" enctype="multipart/form-data">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Company Name</label>
                        <input type="text" name="companyname" class="form-control" id="inputEmail4" placeholder="Comapny Name" required="" onkeypress="return /[a-z]/i.test(event.key)">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Title</label>
                        <input type="text" name="title" class="form-control" id="inputPassword4" required=""  placeholder="Title" onkeypress="return /[a-z]/i.test(event.key)">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAddress">salary</label>
                    <input type="text"  name="salary" class="form-control" id="inputAddress" required="" placeholder="Salary" >
                </div>
                <div class="form-group">
                    <label for="inputAddress2">Address</label>
                    <input type="text" name="address" class="form-control" id="inputAddress2" required="" placeholder="Apartment, studio, or floor">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" name="city" class="form-control" id="inputCity" required="" onkeypress="return /[a-z]/i.test(event.key)">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputState">Company Email</label>
                        <input type="email" name="email" class="form-control" required="" id="inputCity">
                    </div>
                    <div class="form-group col-md-12">
                        <label for="inputState">Job time</label>
                        <input type="text" name="time" class="form-control" required="" id="jobtime">
                    </div>

                </div>
                <textarea class="form-control" name="desc" rows="3" cols="40" placeholder="Description About Job" required="">

                    </textarea>
                <div class="custom-file">
                    <input required="" type="file" name="logo" class="custom-file-input" id="inputGroupFile01">
                    <label class="custom-file-label mt-3"   for="inputGroupFile01">Upload Company Logo</label>
                </div>
                <center>

                    <button type="submit"  class="btn btn-primary w-25 font-weight-bold mt-5">Post</button>
                </center>
            </form>
        </div>
    </body>
</html>
