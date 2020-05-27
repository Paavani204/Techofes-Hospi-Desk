<%
String usr = (String)session.getAttribute("userid");
if(usr == null)
{
 response.sendRedirect("index.html");
}
else{
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Online Registration</title>
		<meta name="description" content="Circular Navigation Styles - Building a Circular Navigation with CSS Transforms | Codrops " />
		<meta name="keywords" content="css transforms, circular navigation, round navigation, circular menu, tutorial" />
		<meta name="author" content="Sara Soueidan for Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component2.css" />

		<script src="js/modernizr-2.6.2.min.js"></script>


<!--NEW HEADER -->




	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">


<style>
body{
background: url(images/bg-01.jpg) no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;}
</style>

<!--HEADER ENDS  style="background-image: url('images/bg-01.jpg');"-->	
</head>	
<body style="background-image: url('images/bg-01.jpg');">

<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-7243260-2']);
_gaq.push(['_trackPageview']);
(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
</script>

	
	
		<div class="container" >
			<!-- Top Navigation -->
			<header>
				<h1>Registration Desk<span>A Cloud Based System</span></h1>	
				
			</header>
			<section>


<!--NEW FILE STARTS <div class="wrap-login100 p-t-30 p-b-50"> <div class="container-login" > form ->class="login100-form validate-form p-b-33 p-t-5"-->				
<center>
<div class="limiter" >
		
			<div class="container" >
			<!-- Top Navigation -->
			<header>
				<h1>
				<span>
					Admin View
					<center><%@page import="java.sql.*"%>
<%
 try{
  
  Class.forName("com.mysql.jdbc.Driver");

  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospi","root","");
  PreparedStatement ps=con.prepareStatement("select * from tfest");
  ResultSet rs=ps.executeQuery();


String phone = request.getParameter("phone");


  
        
        
  while(rs.next())
  {
    
                    String userdbPhone =(String)rs.getString(1);

                    

                    if(phone.equals(userdbPhone))
                        {
                            out.println("<tr><td>"+rs.getString(1));
                        } 
                        
    
  }
  
  }
  catch(Exception e)
  {
    out.println(e);
  }
%>
</center>
				</span>
				</h1>
			</header>	
				
				
				
			</div>
		</div>
	</div>
</center>

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>


<!--BODY ENDS-->


			</section>
			<div class="component">
				<!-- Start Nav Structure -->
				<button class="cn-button" id="cn-button">+</button>
				<div class="cn-wrapper" id="cn-wrapper">
				    <ul>		      
						
						<li><a href="count.jsp"><span>Head<br>Count</span></a></li>
						<li><a href="main.html"><span>Form</span></a></li>
						<li><a href="index.jsp"><span>Lock</span></a></li>
						<li><a href="dba.jsp"><span>Database<br>Administrator</span></a></li>
						<li><a href="admin.jsp"><span>Entries</span></a></li>
						<li><a href="index.jsp"><span>Admin</span></a></li>
						<li><a href="count1.jsp"><span>Total<br>Amount</span></a></li>
						
				     </ul>
				</div>
				<div id="cn-overlay" class="cn-overlay"></div>
				<!-- End Nav Structure -->
			</div>
		</div><!-- /container -->
		<script src="js/polyfills.js"></script>
		<script src="js/demo1.js"></script>
		<!-- For the demo ad only -->   
<script src="http://tympanus.net/codrops/adpacks/demoad.js"></script>
	</body>
</html>

<%}
%>
