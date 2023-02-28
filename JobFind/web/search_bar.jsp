
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <!-- search box start -->
        <form action="showsearch.jsp" method="post">
        <div class="container  my-3 ">
            <div class="row  offset-md-2 ">
                <div class="col  ">
                    <div class="frame-div">
                        <input class="rectangle-input" type="text" maxlength="15" name="job" placeholder="Job Name" />
                        <i class="iconsaxlinearsearchstatus fa fa-search"></i>

                    </div>
                </div>
                <div class="col ">
                    <div class="frame-div">
                        <input class="rectangle-input" type="text" maxlength="10" name="city" placeholder="city" />
                        <i class="iconsaxlinearsearchstatus fa fa-map"></i>

                    </div>
                </div>
                <div class="col-5 ">
                    <button type="submit" class="btn btn-primary ">Find Job</button>
                </div>
            </div>
        </div>
</form>
        <!-- search box end -->
    </body>
</html>
