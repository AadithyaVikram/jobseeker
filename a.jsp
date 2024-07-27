<%@page import="java.sql.*"%>
<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
out.print(e);
}
%>
<head><title>candidates list</title>
<style>

body {
background-image: url("work.jpg");
background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
  margin: 0;
  font-family: Arial;
  font-size: 17px;
}
</style>
</head>
<body bgcolor="#ccffcc">
<h2 align="center"><font><strong><u style="color: white;">List of job seekers</u></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="aqua">
<td><b>Sno</b></td>
<td><b>Name</b></td>
<td><b>gmail</b></td>
<td><b>mobile</b></td>
<td><b>gender</b></td>
<td><b>primary language</b></td>
<td><b>other language</b></td>
<td><b>profession</b></td>
<td><b>experience</b></td>
<td><b>certificates</b></td>
<td><b>previous company</b></td>
</tr>
<%
try{ 
Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
Statement statement=connection.createStatement();
String sql ="SELECT * FROM candidate";
int i=1;
ResultSet resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="khaki">
<td><%=i%></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("gmail") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("exl") %></td>
<td><%=resultSet.getString("oexl") %></td>
<td><%=resultSet.getString("domain") %></td>
<td><%=resultSet.getString("yrexp") %></td>
<td><%=resultSet.getString("nc") %></td>
<td><%=resultSet.getString("prevcom") %></td>
</tr>
<% 
i++;}
} catch (Exception e) {
out.print(e);
}
%>
</table>
</body>