<%@page import="java.sql.*"%>

<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
out.print(e);
}
%>
<head><title>processing..</title></head>
<body bgcolor="#ccffcc">
<h2 align="center"><font><strong><u>Status</u></strong></font></h2>
<%
try{ 
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");

String uname=request.getParameter("un");
String mail=request.getParameter("e");
String pass=request.getParameter("pwd");
Long phone=Long.parseLong(request.getParameter("ph"));
String gen=request.getParameter("gender");
String pl=request.getParameter("el");
String ol=request.getParameter("oel");
String job=request.getParameter("domain");
int xp=Integer.parseInt(request.getParameter("yoe"));
int c=Integer.parseInt(request.getParameter("nocir"));
String pwc=request.getParameter("prvcom");

PreparedStatement st=con.prepareStatement("insert into candidate values(?,?,?,?,?,?,?,?,?,?,?)");

st.setString(1,uname);
st.setString(2,mail);
st.setString(3,pass);
st.setLong(4,phone);
st.setString(5,gen);
st.setString(6,pl);
st.setString(7,ol);
st.setString(8,job);
st.setInt(9,xp);
st.setInt(10,c);
st.setString(11,pwc);
int x= st.executeUpdate();
%>
<table title="details">
    <tr>
        <td>username: <%=uname%></td><br>
        <td>gmail: <%=mail%></td><br>
        <td>password: <%=pass%></td><br>
        <td>mobile: <%=phone%></td><br>
        <td>gender: <%=gen%></td><br>
        <td>primary lang: <%=pl%></td><br>
        <td>other lang: <%=ol%></td><br>
        <td>profession: <%=job%></td><br>
        <td>experience: <%=xp%></td><br>
        <td>certificates: <%=c%></td><br>
        <td>prev company: <%=pwc%></td><br>
    </tr>
</table>
<h2>updated ;)</h2>
<h3>Thank you for visiting...</h3>
<% 

} catch (Exception e) {
out.print(e);
}
%>
</body>