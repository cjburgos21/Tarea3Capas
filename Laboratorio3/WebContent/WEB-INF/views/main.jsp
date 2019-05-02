<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Importando librerias Core y Formatting --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Laboratorio3</title>
</head>
<body>
	<h1>${ message }</h1>
	<h2>c:set</h2>
	<c:set var = "age" value = "${2018-1995}"/>
	<c:out value="Su edad actual es:"/><p>
	<c:out value = "${age}"/>
	<h3>fmt:formatDate</h3>
	<c:set var = "now" value = "<%=new java.util.Date()%>" />
	 <p>Fecha Actual (1): <fmt:formatDate type = "date" 
         value = "${now}" /></p>
    <h4>c:choose</h4>
    <p>Tu edad es : <c:out value = "${age}"/></p>
      <c:choose>
         <c:when test = "${age >= 30}">
            Eres adulto
         </c:when>
         
         <c:when test = "${age < 30}">
            Eres joven
         </c:when>
         
         <c:otherwise>
            Eres menor de edad
         </c:otherwise>
      </c:choose>
	
</body>
</html>