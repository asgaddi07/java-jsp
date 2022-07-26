<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Training Portal</title>
</head>
<body>
<h3>Traning Portal</h3>
<!-- read the favorite language cookies -->
<%
//the default... ifthere are no cookies
String favLang="C++";
//get the cookies from  the browser request
Cookie[] theCookies=request.getCookies();
//find our favorite language cookies
if(theCookies!=null){
	for(Cookie tempCookies: theCookies){
		if("myApp.favoriteLanguage".equals(tempCookies.getName())){
			favLang=tempCookies.getValue();
		break;
	}
}
}
%>
<!-- now show a personalize --- use the favLang variable -->
<!-- show book for language -->
<h4>Show new books for <%=favLang %></h4>
<ul>
<li>Blah Blah</li>
<li>Blah Blah</li>
</ul>

<h4>Show new Article for <%=favLang %></h4>
<ul>
<li>Blah Blah</li>
<li>Blah Blah</li>
</ul>

<h4>Show new Jobs for <%=favLang %></h4>
<ul>
<li>Blah Blah</li>
<li>Blah Blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>
</html>