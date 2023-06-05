<jsp:useBean id="pageContex" scope="request" type="org.graalvm.compiler.core.common.CompilationRequestIdentifier"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Save Customer</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath} web/WEB-INF/resources/css/style.css"/>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}web/WEB-INF/resources/css/add-customer-style.css"/>
</head>

<body>
<div id="wrapper">
    <div id="header">
        <h2>
            CRM - Customer Relationship Manager</h2>
    </div>

</div>

<div id="container">
    <h3>Save Customer</h3>

    <%--@elvariable id="customer" type=""--%>
    <form:form action="saveCustomer" modelAttribute="customer" method="POST">

        <form:hidden path="id"/>


        <table>
            <caption></caption>
            <tr>
                <th scope="col">First name</th>
                <th scope="col">Last name</th>
            </tr>
            <tbody>

            <tr>
                <td><label>First name</label></td>
                <td><form:input path="firstName"/></td>
            </tr>

            <tr>
                <td><label>Last name</label></td>
                <td><form:input path="lastName"/></td>
            </tr>

            <tr>
                <td><label>email</label></td>
                <td><form:input path="email"/></td>
            </tr>

            <tr>
                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"/></td>
            </tr>

            </tbody>

        </table>

    </form:form>

    <div style="clearboth: "></div>

    <p>
        <a href="${pageContex.request.contextPath}/customer/list">Back to List</a>

</div>

</body>


</html>