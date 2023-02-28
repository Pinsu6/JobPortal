<!doctype html>

<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
              integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/qualification.css">
        <title>Hello, world!</title>
    </head>

    <body>

        <div class="container my-2 box shadow p-3 mb-5 bg-white rounded">
            <h1 class="font-weight-bolder my-2 text-center">Mention your Education</h1>
            <p class="text-center">Add your Education details will help recruiters know your value as a potential candidate
            </p>
        </div>
        <div class="container my-2 box shadow p-3 mb-5 bg-white rounded">


            <form action="qualification" method="post">
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputPassword4">university</label>
                        <div class="input-group mb-3">

                            <div class="input-group-prepend">

                                <span class="input-group-text" id="basic-addon1"><i class="fa fa-university"></i></span>
                            </div>
                            <input type="text" name="university" class="form-control" placeholder="University Name"  aria-label="university name"
                                   aria-describedby="basic-addon1">
                        </div>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">School</label>
                        <div class="input-group mb-3">

                            <div class="input-group-prepend">

                                <span class="input-group-text" id="basic-addon1"><i class="fa fa-book"></i></span>
                            </div>
                            <input type="text" class="form-control" placeholder="School Name" name="school" aria-label="Username"
                                   aria-describedby="basic-addon1">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputAddress2">Address</label>
                    <input type="text" class="form-control" id="inputAddress2" name="adress" placeholder="Apartment, studio, or floor">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputCity">City</label>
                        <input type="text" name="city"  class="form-control" id="inputCity">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">State</label>
                        <select id="inputState" name="state" class="form-control">
                            <option selected>J&K</option>
                            <option>Gujarat</option>
                            <option>Rajsthan</option>
                            <option>mijoram</option>
                            <option>Sikkim</option>
                            <option>Up</option>
                            <option>Bihar</option>
                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label for="inputZip">Zip</label>
                        <input type="text" name="zip" class="form-control" id="inputZip">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputQualification">Qualification</label>
                        <select id="qualification" name="qualification" class="form-control">
                            <option selected>Under graduate</option>
                            <option>graduate</option>
                            <option>12th</option>
                            <option>10th</option>

                        </select>
                    </div>

                </div>
                <center>
                    <button type="submit" class="btn btn-primary  ">Let's Go</button>
                </center>
            </form>

        </div>




        <!-- script -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>

    </body>

</html>