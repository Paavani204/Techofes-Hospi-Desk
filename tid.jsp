<%
String usr = (String)session.getAttribute("userid");
if(usr == null)
{
 response.sendRedirect("index.html");
}
else{
%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/hospi";%>
<%!String user = "root";%>
<%!String psw = "";%>

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
    <title>Techofes Id</title>

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
                    <b><h1><h2 class="title">Techofes Id</h2><h1>
                    
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <form name="test1.php">
<center>

<b>

<%@page import="java.util.*" %>
<%

String phone=(String)session.getAttribute("phone");
String t_id=(String)session.getAttribute("t_id");

Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update tfest set t_id=? where phone="+phone;
ps = con.prepareStatement(sql);
ps.setString(1,t_id);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Kindly note the Techofes ID");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}

%>
<center><font size="20">
<% out.println(t_id);
%>
</font>
</h1>
</body>
</form>
</html>

</style>
 </div>

                            </div> 
  
  
  
                </div>

                <form action="options1.html" method="POST">
            <div class="p-t-15">
                <div align="left">
                           
                        </div></form>
            <form action="options1.jsp" method="POST">
                <div align="right">
                            <button class="btn btn--radius-2 btn--blue" type="submit" style="float:right;">Home</button>
                        </div>
                    </div></form>

            </div>




        </div>
        
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

<!-- +++++++++++++++++++++++++chfhx +++++++++++++++++++++++++++++++++-->
<html>
<head><title>techofes</title></head>
<%}
%>
