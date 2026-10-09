<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>

<fmt:setLocale value="${sessionScope.locale}" />

<!DOCTYPE html>
<html lang="${sessionScope.locale.language}">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <fmt:setBundle basename="messages"/>
    <title><fmt:message key="msg.title" /></title>
    <meta name="description" content="Ticket Logger">
    <meta name="author" content="Jesús Delgado">
    <link rel="icon" type="image/x-icon" href="images/favicon.ico">
    </head>
<body>

<fmt:setBundle basename="messages"/>
<form action="changeLanguage" method="get">
    <select name="lang" onchange="this.form.submit()">
        <option value="en" ${sessionScope.locale.language == 'en' ? 'selected'
                : ''}>English</option>
        <option value="es" ${sessionScope.locale.language == 'es' ? 'selected'
                : ''}>Español</option>
    </select>
</form>
