<%
String usr = (String)session.getAttribute("userid");
if(usr == null)
{
 response.sendRedirect("index.html");
}
else{
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Online Registration</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">
          
    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>
<b><font size="10">
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
                <div class="card-body">
                    <h2 class="title"> OnLine Registration Form </h2>
                    <form action="pay_at.jsp" method="POST">
                        <div class="col-2">
                                <div class="input-group">
                                    <label class="label"> Enter Pay Id </label>
                                    <input class="input--style-4" type="text" name="pay_at_hospi_id"  autocomplete="off" required>
                                </div>
                            </div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit"> check </button>
                        </div>
                     </form>
                </div>
            </div>
        </div>
        <br><br><form action="options1.jsp" method="POST">
            <div class="p-t-15">
                <div align="left">
                            <button class="btn btn--radius-2 btn--blue" type="submit" style="float:left;">Home</button>
                        </div></form>
            <form action="options1.jsp" method="POST">
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
<%}%>