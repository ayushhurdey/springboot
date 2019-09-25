<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="jwp"%>

<c:url var="url" value="/messages" />

<c:forEach var="message" items="${messageList.content}">

	<c:url var="messageUrl" value="/chatview/${message.fromUserId}" />
	
	<div class="message-received">
	
	${message.sent} <a href="${messageUrl}">${message.from}</a>
	
	</div>
<p/>

</c:forEach>


<jwp:pagination url="${url}" page="${messageList}" size="10" />