<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page -->
    <title>Payment</title>

    <!--Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!--Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main  CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>


<script>
function myFunction() {
  location.replace("logout.jsp")
}
</script>

</body>
</html> 




    <button onclick="myFunction()" class="btn btn--radius-2 btn--blue" type="submit" style="float:right;">Log Out</button>
                   

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
            <b>
                <div class="card-body">
                    <center><b><h2 class="title">PAY BY CASH</h2>
                    </b></center>


<!--++++++++++++++++DISPAY.HTML++++++++++++++++++++++++++++++++++++++-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>Payment</title>
</head>
<body>

<form action="security.jsp" method="post">
<div class="col-2">
                                <div class="input-group">
                                    <label class="label">SECURITY ID</label>
                                    <input class="input--style-4" type="password" name="security_id">
                                </div>
                            </div>
                             <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Authenticate</button>
                        </div>
                        </form>

</font>
</body>
</html>
                    
                </div>
            </div>
        </div><br><br><br><br><br><br><br>
        <form action="options1.jsp" method="POST">
            <div class="p-t-15">
                <div align="left">
                            <button class="btn btn--radius-2 btn--blue" type="submit" style="float:left;">Home</button>
                        </div></form>
            <form action="display.jsp" method="POST">
                <div align="right">
                            <button class="btn btn--radius-2 btn--blue" type="submit" style="float:right;">Back</button>
                        </div>
                    </div></form>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<!-- end document-->



