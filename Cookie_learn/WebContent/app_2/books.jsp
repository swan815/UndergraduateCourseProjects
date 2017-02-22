<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h4>Books Pages</h4>
	
	<a href="book.jsp?book=JavaWeb">Java Web</a><br><br>
	<a href="book.jsp?book=Java">Java</a><br><br>
	<a href="book.jsp?book=Oracle">Oracle</a><br><br>
	<a href="book.jsp?book=Ajax">Ajax</a><br><br>
	<a href="book.jsp?book=JavaScript">JavaScript</a><br><br>
	<a href="book.jsp?book=Android">Android</a><br><br>
	<a href="book.jsp?book=Jbpm">Jbpm</a><br><br>
	<a href="book.jsp?book=Struts">Struts</a><br><br>
	<a href="book.jsp?book=Hibernate">Hibernate</a><br><br>
	<a href="book.jsp?book=Spring">Spring</a><br><br>
	
	<br><br>
	<%
		Cookie [] cookies = request.getCookies();
		
		if(cookies != null && cookies.length > 0){
			for(Cookie c: cookies){
				String cookieName=c.getName();
				if(cookieName.startsWith("LSY_BOOK")){
					out.println(c.getValue());		
					out.print("<br>");
				}
			}
		}
			
	%>

</body>
</html>