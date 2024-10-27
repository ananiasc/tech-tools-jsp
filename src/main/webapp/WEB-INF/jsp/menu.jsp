<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String optionMenu = "inicio"; // Suponha que esse valor venha da lógica do servidor ou da sessão
%>
<div class="w-64 bg-gray-50 border-r border-gray-200 h-screen p-4">
    <div class="flex items-center mb-6">
        <img src="<c:url value='/images/logo-sf.png' />" alt="Logo" class="h-8 mr-2">
        <span class="text-lg font-bold">Tech Tools</span>
    </div>
    <nav class="menu">
        <ul class="space-y-2">
            <li @click="optionMenu = 'inicio'">
                <a href="${pageContext.request.contextPath}/" class="flex items-center p-2 text-blue-700 bg-blue-100 rounded">
                    Início
                </a>
            </li>

            <li x-data="{ open: false }"> <!-- Usando Alpine.js para interatividade -->
                <a @click="open = !open" class="flex items-center justify-between p-2 text-gray-700 hover:text-blue-700 hover:bg-blue-50 rounded cursor-pointer">
                            <span class="flex items-center">
                                Conversão
                            </span>
                    <span x-show="!open">
                        <img src="<c:url value='/images/chevron-up.svg' />" class="h-6 mr-2" alt="chevron up" />
                    </span>
                    <span x-show="open">
                        <img src="<c:url value='/images/chevron-down.svg' />" class="h-6 mr-2" alt="chevron down"/>
                    </span>
                </a>
                <ul x-show="open" class="ml-6 mt-2 space-y-2" @click="optionMenu = 'conversao-texto'">
                    <li>
                        <a href="#" class="block p-2 text-gray-700 hover:text-blue-700 hover:bg-blue-50 rounded">Conversor de Texto</a>
                    </li>
                </ul>
            </li>

            <li x-data="{ open: false }">
                <a @click="open = !open" class="flex items-center justify-between p-2 text-gray-700 hover:text-blue-700 hover:bg-blue-50 rounded cursor-pointer">
                            <span class="flex items-center">
                                Gerador
                            </span>
                    <span x-show="!open">
                        <img src="<c:url value='/images/chevron-up.svg' />" class="h-6 mr-2" alt="chevron up" />
                    </span>
                    <span x-show="open">
                        <img src="<c:url value='/images/chevron-down.svg' />" class="h-6 mr-2" alt="chevron down"/>
                    </span>
                </a>
                <ul x-show="open" class="ml-6 mt-2 space-y-2">
                    <li @click="optionMenu = 'gerar-senha'">
                        <a href="#" class="block p-2 text-gray-700 hover:text-blue-700 hover:bg-blue-50 rounded">Gerador de Senha</a>
                    </li>
                    <li @click="optionMenu = 'gerar-cpf'">
                        <a href="#" class="block p-2 text-gray-700 hover:text-blue-700 hover:bg-blue-50 rounded">Gerador de CPF</a>
                    </li>
                    <li @click="optionMenu = 'gerar-cnpj'">
                        <a href="#" class="block p-2 text-gray-700 hover:text-blue-700 hover:bg-blue-50 rounded">Gerador de CNPJ</a>
                    </li>
                </ul>
            </li>
        </ul>
    </nav>
</div>