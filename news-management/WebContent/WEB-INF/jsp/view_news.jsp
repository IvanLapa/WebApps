<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page errorPage="error.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>VIEW NEWS</title>
<link href="news.css" rel="stylesheet">
</head>

<fmt:setLocale value="${sessionScope.local}"/>
<fmt:setBundle basename="localization.local" var="loc" />

<fmt:message bundle="${loc}" key="reference.russian" var="button_ru" />
<fmt:message bundle="${loc}" key="reference.english" var="button_en" />
<fmt:message bundle="${loc}" key="table.logo" var="table_logo" />
<fmt:message bundle="${loc}" key="button.create-news" var="button_create_news" />
<fmt:message bundle="${loc}" key="button.list-all-news" var="button_list_all_news" />

<fmt:message bundle="${loc}" key="form.title" var="form_title" />
<fmt:message bundle="${loc}" key="form.brief" var="form_brief" />
<fmt:message bundle="${loc}" key="form.content" var="form_content" />

<fmt:message bundle="${loc}" key="button.back" var="button_back" />

<fmt:message bundle="${loc}" key="reference.edit" var="reference_edit" />
<fmt:message bundle="${loc}" key="reference.delete" var="reference_delete" />

<fmt:message bundle="${loc}" key="operation.view-news.logo" var="operation_view_news_logo" />

<body>
	<p align="right">
		<a href="controller?command=localization&local=en&current_command=localization_view_news_page&newsId=${sessionScope.current_news.id}">${button_en}</a> 
		<a href="controller?command=localization&local=ru&current_command=localization_view_news_page&newsId=${sessionScope.current_news.id}">${button_ru}</a>
	</p>

	<h1 align="left"><font color="red">${table_logo}</font></h1>
		
	<form action="controller" method="GET">
		<input type="hidden" name="command" value="fill_news" /> 
		<input type="submit" name="submit" value="${button_create_news}" class="myButton"/>
	</form>
	<form action="controller" method="GET">
		<input type="hidden" name="command" value="view_all_news" /> 
		<input type="submit" name="submit" value = "${button_list_all_news}" class="myButton">
	</form>
	<br>
	
	<form action="controller" method="POST">
		<input type="hidden" name="command" value="create_news" /> 
		<fieldset>
			<legend>${operation_view_news_logo}</legend>
			<p>
				<label for="name">ID:</label>
				<b><c:out value="${sessionScope.current_news.id}" /></b>
			</p>
			<p>
				<label for="name">Date:</label>
				<br>
				<c:out value="${sessionScope.current_news.date}" />
			</p>
			<p>
				<td>${form_title}:</td>
				<br>
				<td> <c:out value=" ${sessionScope.current_news.title}" /> </td>
			</p>
			<p>
				<td>${form_brief}:</td>
				<br>
				<td> <c:out value=" ${sessionScope.current_news.brief}" /> </td>
			</p>
			<p>
				<td>${form_content}:</td>
				<br>
				<td> <c:out value=" ${sessionScope.current_news.content}" /> </td>
			</p>
			<td colspan="2" align="right">
			<p align="left">
				<a href="controller?command=localization_update_news_command&id=${sessionScope.current_news.id}">${reference_edit}</a>
				<a href="controller?command=delete_news&id=${sessionScope.current_news.id}">${reference_delete}</a>
			</p>
			</td>
    	</fieldset>
    	<br>
    	<input type="button" onclick="history.back();" value="${button_back}" class="myButton"/>
	</form>
</body>
</html>