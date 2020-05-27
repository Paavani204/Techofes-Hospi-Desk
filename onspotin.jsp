<%
String usr = (String)session.getAttribute("userid");
if(usr == null)
{
 response.sendRedirect("index.html");
}
else{
%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospi","root","");
	PreparedStatement ps=con.prepareStatement("insert into tfest values(?,?,?,?,?,?,?,?)");
	String phone=(String)request.getParameter("phone");
	String name=(String)request.getParameter("name");
	String collegeid=(String)request.getParameter("collegeid");
	String collegename=(String)request.getParameter("collegename");
	String collegeplace=(String)request.getParameter("collegeplace");
	String mail=(String)request.getParameter("mail");
	 /*String seven=(String)request.getParameter("event");
	out.println(six);*/
String nums=phone;
Random rand = new Random();
int t = rand.nextInt(90) + 10;
StringBuilder sb = new StringBuilder();
sb.append("OS");
String str =nums; 
char[] ch = new char[6]; 
 int j=0;
for (int i = 4; i < str.length(); i++) { 
	ch[j++] = str.charAt(i); 
	} 
sb.append(ch);
sb.append(t);
System.out.print(sb);





int n = rand.nextInt(90000) + 10000;
StringBuilder sa = new StringBuilder();
sa.append("T");
sa.append(n);


    
	String pay_at_hospi_id=sb.toString();
	String t_id=sa.toString();
	String s="Null";

	out.println(t_id);
	session.setAttribute("t_id",t_id);
    session.setAttribute("phone",phone);
	ps.setString(1,phone);
	ps.setString(2,name);
	ps.setString(3,collegeid);
	ps.setString(4,collegename);
	ps.setString(5,collegeplace);
	ps.setString(6,mail);
	ps.setString(7,pay_at_hospi_id);
	ps.setString(8,s);
	int x=ps.executeUpdate();
	if (x==0)
		out.println("Something Went Wrong !!");
	else
	{
	}
	con.close();
	response.sendRedirect("display.jsp");
	}
	catch(Exception e)
	{
	response.sendRedirect("display.jsp");
	 //out.print(e);
	}
%>
<%}%>