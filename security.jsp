<html>
<body>

<%@page import="java.sql.*"%>
<%
 try{

  String pass=(String)request.getParameter("security_id");
  if(pass.equals("1000"))
  {
    response.sendRedirect("tid.jsp");
  
  }
  else
  {
    %>
    <script>
     alert("Authentication Failed");
     <%response.sendRedirect("payment.jsp");%>
    </script>
  <%
  }
  }
  catch(Exception e)
  {
    out.println(e);
  }
%>

   

</body>
</html>