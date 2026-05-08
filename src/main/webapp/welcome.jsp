<%@ page language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
</head>

<body>

<%

String name = request.getParameter("uname");

String t = request.getParameter("time");

int time = Integer.parseInt(t);

out.print("<h2>Hello " + name + " !</h2>");

session.setAttribute("user", name);

session.setMaxInactiveInterval(time * 60);

out.print("<br>Session has started for "
+ time + " minute(s)");

out.print("<br>Your name is stored in session object");

out.print("<br>Press the following link within "
+ "the session time to check session value");

out.print("<br>Or wait for "
+ time + " minute(s) to see session expiry");

%>

<br><br>

<a href="second.jsp">
Display Session Value
</a>

</body>
</html>