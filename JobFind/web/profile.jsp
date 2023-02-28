
<%@page import="com.help.resume"%>
<%@page import="com.help.msg"%>
<%@page import="com.servlet.detailInsert"%>

<%@page import="com.help.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    user u = (user) session.getAttribute("user");
    detailInsert u1 = (detailInsert) session.getAttribute("qualification");

    String name = null;
    String lname = null;
    String email = null;
    String city = null;
    String university = null;
    String school = null;
    String adress = null;
    String state = null;
    String zip = null;
    String resume = "not upload yet";
    String qualification = null;

    String img = null;
    
    if (u != null || u1 != null) {
        name = u.getFname();
        lname = u.getLname();
        email = u.getEmail();
        img = u.getPic();
        university = u1.getUniversity();
        city = u1.getCity();
        school = u1.getSchool();
        adress = u1.getAdress();
        state = u1.getState();
        zip = u1.getZip();
        resume = u.getResume();
        qualification = u1.getQualification();

    } else {
        response.sendRedirect("index.jsp");
    }
   
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile</title>
    </head>
    <body>

        <%      msg m = (msg) session.getAttribute("msg");

            if (m != null) {
                String user11 = (String) m.getMessage();
                String css = (String) m.getCss();
        %>
        <div class="alert <%=css%>" role="alert">

            <%=user11%>
        </div>
        <%
                session.removeAttribute("msg");
            }
        %>
        <!-- Modal -->
        <div class="modal fade" id="profile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog " role="document">
                <div class="modal-content ">

                    <div class="modal-header ">

                        <h5 class="modal-title " id="exampleModalLabel">
                            <%=name%>'s profile

                        </h5>

                    </div>
                    <div class="modal-body">
                        <center>



                            <img src="./img/pic/<%=img%>" width="70" height="70" alt="profile" style="border-radius: 50%; border-color: black; border-style:solid;"/>


                        </center>
                        <table id="show-profile" class="table">
                            <thead>
                                <tr>

                                    <th scope="col">First Name</th>

                                    <td><%=name%></td>

                                </tr>

                                <tr>
                                    <th scope="col">Last Name</th>
                                    <td><%=lname%></td>
                                </tr>
                                <tr>
                                    <th scope="col">email</th>
                                    <td><%=email%></td>
                                </tr>
                                <tr>
                                    <th scope="col">city</th>
                                    <td><%=city%></td>
                                </tr>
                                <tr>
                                    <th scope="col">university</th>
                                    <td><%=university%></td>
                                </tr>
                                <tr>
                                    <th scope="col">school</th>
                                    <td><%=school%></td>
                                </tr>
                                <tr>
                                    <th scope="col">address</th>
                                    <td><%=adress%></td>
                                </tr>
                                <tr>
                                    <th scope="col">state</th>
                                    <td><%=state%></td>
                                </tr>
                                <tr>
                                    <th scope="col">zip</th>
                                    <td><%=zip%></td>
                                </tr>
                                <tr>
                                    <th scope="col">qualification</th>
                                    <td><%=qualification%></td>
                                </tr>
                                <tr>
                                    <th scope="col">Resume</th>
                                    <td><%=resume%></td>
                                </tr>
                            </thead>

                        </table>
                        <!--edit profile-->
                        <div class="container text-center m-2" id="show-edit" style="display: none">
                            <form  action="edit_servlet" method="post" enctype="multipart/form-data">
                                <h3>Edit profile</h3>
                                <table class="table">

                                    <tr>
                                        <td>Name:</td>
                                        <td><input type="text" name="name" value="<%=name%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Last Name</td>
                                        <td><input type="text" name="lname" value="<%=lname%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Email:</td>
                                        <td><input  type="email" readonly="" style="width: 230px;"  value="<%=email%>"></td>
                                    </tr>
                                    <tr>
                                        <td>city</td>
                                        <td><input type="text" name="city" value="<%=city%>"></td>
                                    </tr>
                                    <tr>
                                        <td>university</td>
                                        <td><input type="text" name="university" value="<%=university%>"></td>
                                    </tr>
                                    <tr>
                                        <td>school</td>
                                        <td><input type="text" name="school" value="<%=school%>"></td>
                                    </tr>
                                    <tr>
                                        <td>state</td>
                                        <td><input type="text" name="state" value="<%=state%>"></td>
                                    </tr>
                                    <tr>
                                        <td>zip</td>
                                        <td><input type="text" name="zip" value="<%=zip%>"></td>
                                    </tr>
                                    <tr>
                                        <td>address</td>
                                        <td><textarea  name="address" rows="2" cols="30"><%=adress%></textarea></td>
                                    </tr>

                                    <tr>
                                        <td>qualification</td>
                                        <td><input type="text" name="qualification" value="<%=qualification%>"></td>
                                    </tr>


                                    <tr>
                                        <td>profile-pic:</td>
                                        <td> <input name="image" type="file"></td>
                                    </tr>
                                    <tr>
                                        <td>upload resume:</td>
                                        <td> <input name="resume" type="file"></td>
                                    </tr>
                                </table>
                                <div class="container">
                                    <button type="submit" class="btn btn-outline-primary">Update</button>
                                </div>
                            </form>
                        </div>
                        <!--edit profile end-->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" id="edit" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>
        <!--modal end-->

        <!--edit profile script-->
        <script>
            let a = false;
            $(document).ready(function () {
                $('#edit').click(function () {
                    if (a == false)
                    {
                        $('#show-edit').show();
                        $('#show-profile').hide();
                        $(this).text("Back");
                        a = true;
                    } else if (a == true)
                    {
                        $('#show-edit').hide();
                        $('#show-profile').show();
                        $(this).text("Edit");
                        a = false;
                    }
                });
            });
        </script>

        <!--edit profile scrt end-->
    </body>
</html>
