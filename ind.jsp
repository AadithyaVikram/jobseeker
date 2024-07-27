
<%@page import="java.sql.*"%>

<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
out.print(e);
}
%>
<head><title>candidate details</title></head>
<body bgcolor="#ccffcc">
<br>
<br>
<br>
<br>
<br>
<br>
<h2 align="center"><font><strong><u>User details</u></strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="aqua" >
    <td><b>S no</b></td>
<td><b>Name</b></td>
<td><b>gmail</b></td>
<td><b>mobile</b></td>
<td><b>password</b></td>
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

String s1=request.getParameter("user");
String s2=request.getParameter("ewd");
String sql =String.format("SELECT * FROM candidate where gmail='%s' and password='%s'",s1,s2);
ResultSet resultSet = statement.executeQuery(sql);
int i=1;
while(resultSet.next()){


%>
<tr bgcolor="khaki">
<td><%=i %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("gmail") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("exl") %></td>
<td><%=resultSet.getString("oexl") %></td>
<td><%=resultSet.getString("domain") %></td>
<td><%=resultSet.getString("yrexp") %></td>
<td><%=resultSet.getString("nc") %></td>
<td><%=resultSet.getString("prevcom") %></td>
</tr>
<% 
i++;
}
} catch (Exception e) {
out.print(e);
}
%>
</table>
</body>
