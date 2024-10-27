<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Página Inicial</title>
    <link href="<c:url value='/css/tailwind.min.css' />" rel="stylesheet">
</head>
<body class="flex" x-data="{ optionMenu: 'inicio' }">
    <%@ include file="menu.jsp" %>

    <!-- Conteúdo principal -->
    <div class="flex-grow p-8" x-show="optionMenu === 'inicio'">
        <h1 class="text-xl font-bold">Bem-vindo</h1>
    </div>

    <!-- Conteúdo converter texto -->
    <div class="flex-grow p-8" x-show="optionMenu === 'conversao-texto'">
        <h1 class="text-xl font-bold">Conversor de Texto</h1>
    </div>

    <!-- Conteúdo gerar senha -->
    <div class="flex-grow p-8" x-show="optionMenu === 'gerar-senha'">
        <h1 class="text-xl font-bold">Gerar Senha</h1>
    </div>

    <!-- Conteúdo gerar cpf -->
    <div class="flex-grow p-8" x-show="optionMenu === 'gerar-cpf'">
        <h1 class="text-xl font-bold">Gerar CPF</h1>
    </div>

    <!-- Conteúdo gerar cnpj -->
    <div class="flex-grow p-8" x-show="optionMenu === 'gerar-cnpj'">
        <h1 class="text-xl font-bold">Gerar CNPJ</h1>
    </div>

    <!-- Incluindo Alpine.js para interatividade leve -->
    <script src="<c:url value='/javascript/cdn.min.js' />" type="application/javascript"></script>
</body>
</html>