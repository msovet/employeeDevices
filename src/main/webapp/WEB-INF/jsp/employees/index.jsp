<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">


    <%--    <link rel="stylesheet" type="text/css" href="/WEB-INF/view/style/styles.css">--%>
    <title>Employees</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">FirstName</th>
                    <th scope="col">Lastname</th>
                    <th scope="col">Email</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${not empty employees}">
                    <c:forEach var="employee" items="${employees}">
                        <tr>
                            <td>${employee.id}</td>
                            <td>${employee.firstName}</td>
                            <td>${employee.lastName}</td>
                            <td>${employee.email}</td>
                            <td>${employee.gender}</td>
                            <td>
                                    <a href="/employees/${employee.id}" class="btn btn-primary">
                                        <i class="far fa-eye"></i>
                                    </a>
                                <a href="/employees/${employee.id}/update" class="btn btn-primary"><i
                                        class="fas fa-edit"></i></a>
                                <a href="/employees/${employee.id}/delete" class="btn btn-danger"><i
                                        class="far fa-trash-alt"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
            </table>
            <br>
            <a href="/employees/create" class="btn btn-primary">Create Employee</a>

        </div>
    </div>
</div>


<%--<a href="${pageContext.request.contextPath}/personList">Person List</a>--%>

</body>


</html>