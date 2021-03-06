<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en" style="height: 100%">
<head>
    <%@page pageEncoding="UTF-8" %>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Create</title>
</head>
<body style="height: 100%">
    <div class="d-flex justify-content-center align-items-center" style="height: 100%">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <form:form modelAttribute="employee" action="/employees/create" method="post">
                        <!-- 2 column grid layout with text inputs for the first and last names -->
                        <div class="row mb-4">
                            <div class="col">
                                <div class="form-outline d-flex flex-column">
                                    <input type="text" id="form6Example1" name="firstName"
                                           class="form-control <form:errors path="firstName">is-invalid</form:errors>/>">
                                    <div class="d-flex justify-content-center align-items-center">
                                        <label class="form-label text-center" for="form6Example1">First name</label>
                                        <form:errors path="firstName"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-outline d-flex flex-column">
                                    <input type="text" id="form6Example2" name="lastName"
                                           class="form-control <form:errors path="lastName">is-invalid</form:errors>"/>
                                    <div class="d-flex justify-content-center align-items-center">
                                        <label class="form-label" for="form6Example2">Last name</label>
                                        <form:errors path="lastName"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Email input -->
                        <div class="form-outline mb-4">
                            <div class="form-outline d-flex flex-column">
                                <input type="email" id="form6Example5" name="email"
                                       class="form-control <form:errors path="email">is-invalid</form:errors>"/>
                                <div class="d-flex justify-content-center align-items-center">
                                    <label class="form-label" for="form6Example5">Email</label>
                                    <form:errors path="email"/>
                                </div>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center">
                            <div class="form-check d-inline-block justify-content-center mb-4">
                                <input type="radio" name="gender" value="male" checked="checked"
                                       style="margin-left: 12px;"/>
                                <p>Male</p>
                            </div>
                            <div class="form-check d-inline-block justify-content-center mb-4">
                                <input type="radio" name="gender" value="female" style="margin-left: 20px;"/>
                                <p>Female</p>
                            </div>
                        </div>

                        <button type="submit" value="Submit" class="btn btn-primary btn-block mb-4">Создать</button>

                        <h4> ${message} </h4>

                        <div class="col-md-12 text-center">
                            <button class="btn btn-link">
                                <a href="/employees">All Employees List</a>
                            </button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
