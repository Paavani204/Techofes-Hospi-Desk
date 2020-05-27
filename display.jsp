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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page -->
    <title>Display</title>

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
                    <center><b><h2 class="title">CHECK YOUR DETAILS</h2>
                    </b></center>


<!--++++++++++++++++DISPAY.HTML++++++++++++++++++++++++++++++++++++++-->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<title>Display</title>
</head>
<body bg color="white">

<%
String phone=(String)session.getAttribute("phone");
//int no=Integer.parseInt(phone);

try {
String connectionURL = "jdbc:mysql://localhost:3306/hospi";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;
// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root","");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from tfest where phone='"+phone+"'";
rs = statement.executeQuery(QueryString);
%> 
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">
<%
while(rs.next())
{
%><h4>

    
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <%=rs.getString(1)%>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <%=rs.getString(2)%>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">College-Id</label>
                                    <%=rs.getString(3)%>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">College Name</label>
                                    <%=rs.getString(4)%>
                                </div>
                            </div> 
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">College Place</label>
                                                        <%=rs.getString(5)%>        </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                                                <%=rs.getString(6)%>    </div>
                            </div>
                        </div>
                        <form action="payment.jsp">
                        <div class="p-t-15">
                           <center> <button class="btn btn--radius-2 btn--blue" type="submit"> Next </button><center>
                        </div>
                        </form>
                             
                             </font>
  
                </div>
            </div>
    
                        <form action="options1.jsp" method="POST">
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

    </div>
                       
                        </h4>
<% }
%>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>


        






    </div>



    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->


</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<!-- end document-->




<%}
%>