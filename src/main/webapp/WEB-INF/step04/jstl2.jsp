<%-- WEB-INF/step04/jstl2.jsp --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
    <title>JSTL2</title>
</head>
<body>
<h1>JSTL2</h1>
<form method="post">
    <input name="text">
    <input type="submit">
</form>
<section>
    <p>
        ${text}
    </p>
    <p>
        <c:out value="${text}"/>
    </p>
    <%--  태그를 이스케이프 처리 (실행되지 않게 변경)  --%>
    <%-- XSS : 태그를 해석하는 경우에 스크립트 등을 넣어서 무언가 탈취 --%>
    <%--  thymeleaf는 기본적으로 이스케이프처리를 함. (jsp가 xss가 만연하기 전에 만들어져서 그럼)  --%>
    <c:if test="${text.length() >= 5}">
        <%-- test 조건을 만족시에만 이 태그가 활성화 --%>
        5글자 이상입니다
    </c:if>
</section>
</body>
</html>
