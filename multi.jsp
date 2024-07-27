
<%@ include file="index.jsp" %>
<%
int num1=Integer.parseInt(request.getParameter("n1"));
for(int i=1;i<=10;i++){
out.println(num1+"x"+i+"="+num1*i);%><br><%}
%>