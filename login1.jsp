<html>
<body>

<%@page import="java.sql.*"%>
<%
 try{
  String u_name=(String)request.getParameter("u_name");
  String pass=(String)request.getParameter("password");
  

  String connectionURL = "jdbc:mysql://localhost:3306/hospi";
Connection connection = null;

Statement statement = null;
String temp1=null;
String t2=null;
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
String QueryString = "SELECT u_name,pass from login";
rs = statement.executeQuery(QueryString);
while(rs.next())
{
temp1=rs.getString("u_name");
t2=rs.getString("pass");


  if(u_name.equals(temp1) && pass.equals(t2))
  {
    session.setAttribute("userid", u_name);
    response.sendRedirect("options1.jsp");
  }
  else
  {
    %>
    <script>
     alert("Wrong Password");
     window.location.href ="index.html";
    </script>
  <%
  }

}
  }
  catch(Exception e)
  {
    out.println(e);
  }
%>

   

</body>
</html>