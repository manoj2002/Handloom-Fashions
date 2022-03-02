<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="com.handloom.authentication.manufacturer"
    import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>
</head>
<body>
	<c:forEach items="${manu}" var="man">
     <td>
       <tr>"${man.getId()}"</tr>
       <img src="/imagedata/${man.getImage()}">
     </td>
   </c:forEach>
</body>
</html>