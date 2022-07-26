<%@page import="java.util.Date"%>
<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Hello World JSP.</h1>

<!-- jsp expression tag -->
The time on the server is <%= new java.util.Date() %>
Converting a String to UpperCase:<%= new String("Hello World").toUpperCase() %><br>
25 multiplied by 4 equals: <%= 25*4 %><br>
Is 75 less than 69 ? <%= 75<69 %>

<!-- Jsp scriptlet tag -->
<%
for(int i=1;i<=5;i++){
	out.println("<br/> I really luv2code: "+i);
}
%>

<!-- Jsp Declaration tag -->
<%! String  makeItLower(String data){
	return data.toLowerCase();
}
	%>
	<br>
	Hello World: <%= makeItLower("Hello World") %>

</body>
</html>