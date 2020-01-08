<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="org.codehaus.jettison.json.JSONArray"%>
<%@ page import="org.codehaus.jettison.json.JSONObject"%>
<%@ page import="java.util.List"%>
<%@ page import="net.andree.MyInterns.common.dto.UserDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyInterns App</title>
</head>
<body>
	<%
		String username = (String) session.getAttribute("username");
		List<UserDTO> users = (List<UserDTO>) session.getAttribute("users");
	%>
	<p>
		Welcome
		<%=username%></p>

	<form method="post" action="mentor">
		<input type="submit" value="Logout">
	</form>
	<br>

	<p>Users: </p>
	<table>
		<tr>
			<th>Users</th>
			<th>Username</th>
		</tr>
		<%
			int var1 = 0;
			for (UserDTO user : users) {
		%>
		<tr>
			<td><%=++var1%></td>
			<td><%=user.getUsername()%></td>
		</tr>

		<%
			}
		%>
	</table>

</body>
</html>