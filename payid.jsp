<%
String usr = (String)session.getAttribute("userid");
if(usr == null)
{
 response.sendRedirect("index.html");
}
else{
%>
<html>
<head><title>techofes</title></head>
<d
<form name="test1.php">
<center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<b>

<%@page import="java.util.*" %>
<%

Random rand = new Random();
int num=99999;
int t = rand.nextInt(90) + 10;
StringBuilder sb = new StringBuilder();

sb.append(num);
sb.append(t);
%>
<h1>
<% out.println(sb);
%>
</h1>
</body>
</form>
</html>

</style>
<%}%>