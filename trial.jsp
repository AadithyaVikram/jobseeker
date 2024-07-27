<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
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
Statement statement=con.createStatement();

String uname="sricharan";
String mail="sricharan2@gmail.com";
String pass="sricharan";
long phone=Long.parseLong("9878973456");
String gen="male";
String pl="python";
String ol="java,c";
String job="hacker";
int xp=Integer.parseInt("0");
int c=Integer.parseInt("100");
String pwc="none";

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
st.executeUpdate();
%>
<h2>updated ;)</h2>
<h3>Thank you for visiting...</h3>
<% 
} catch (Exception e) {
out.print(e);
}
%>
</body>