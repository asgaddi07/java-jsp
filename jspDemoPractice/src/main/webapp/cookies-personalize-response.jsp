<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<%
//read from data
String favLang=request.getParameter("favoriteLanguage");
//create the cookies 
//any name in parenteses but same 2nd argument
Cookie theCookie=new Cookie("myApp.favoriteLanguage",favLang);
//set the life span....total numer of seconds 
theCookie.setMaxAge(60*60*24*365);//<--for one year
//send cookies to browser
response.addCookie(theCookie);
%>
<body>
Thanks! We set your favorite language to:${param.favoriteLanguage}
<br/><br/>
<a href="cookies-homepage.jsp">Return to homepage.</a>
</body>
</html>