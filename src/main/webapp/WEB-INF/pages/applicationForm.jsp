<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Application Form</h1>
        <form:form name="appFrm" commandName="user" action="${pageContext.servletContext.contextPath}/saveAndViewApplicationData" method="post">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><form:input path="userName"/><td>
                </tr>
                <tr>
                    <td>Gender: </td>
                    <td>
                        <form:select path="gender">
                            <form:option value="M">Male</form:option>
                            <form:option value="F">Female</form:option>                
                        </form:select>
                    <td>
                </tr>
                <tr>
                    <td>Age Group? : </td>
                    <td><form:checkbox path="ageGroup"  value="Less than 30"/> Less than 30
                        <form:checkbox path="ageGroup"  value="Above 30"/> Above 30
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>

        </form:form>
    </body>
</html>
