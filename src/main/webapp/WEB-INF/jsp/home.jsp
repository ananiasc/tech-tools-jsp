<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Página Inicial</title>
    <link href="<c:url value='/css/tailwind.min.css' />" rel="stylesheet">
</head>
<body class="flex">
    <%@ include file="menu.jsp" %>

    <!-- Conteúdo principal -->
    <div class="flex-grow p-8">
        <h1 class="text-xl font-bold">Bem-vindo</h1>
    </div>

    <!-- Incluindo Alpine.js para interatividade leve -->
    <script src="<c:url value='/javascript/cdn.min.js' />" type="application/javascript"></script>
</body>
</html>