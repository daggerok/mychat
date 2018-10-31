<%--
  Created by IntelliJ IDEA.
  User: irina.rozhnovskaya
  Date: 10/8/2018
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>web app</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/webjars/materializecss/1.0.0/css/materialize.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/styles.css">
</head>
<body>
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}">Home</a></li>
    </ul>
</nav>

<div>
    <s:form cssClass="inline center-align">
        <s:textfield autofocus="autofocus"
                     id="from" name="from" type="text" />
        <s:textfield autofocus="autofocus"
                     id="body" name="body" type="text" />
        <s:submit cssClass="hide"/>
    </s:form>

    <ul class="collection left-align">
        <s:iterator value="messages" var="message">
            <li class="collection-item">
                    ${message.from}:${message.body} <div class="chip">${message.when}</div>
            </li>
        </s:iterator>
    </ul>
</div>

<script type="text/javascript"
        src="${pageContext.request.contextPath}/webjars/materializecss/1.0.0/js/materialize.min.js"></script>
<script>M.AutoInit(document.body);</script>

</body>
</html>