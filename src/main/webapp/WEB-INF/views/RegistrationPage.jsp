
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<html>
<head>
    <title>Registration</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Page</title>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
            integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
            crossorigin="anonymous"></script>
    <script
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
            integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
            crossorigin="anonymous"></script>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
          integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
          crossorigin="anonymous">
</head>
<body>

<div class="container">


    <%--@elvariable id="user" type=""--%>

    <sf:form class="form-horizontal"
             action="${pageContext.request.contextPath}/doRegistration"
             method="post" commandName="user">
        <fieldset>

            <!-- Form Name -->
            <legend>Register Yourself !</legend>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="firstName">First Name</label>
                <div class="col-md-4">

                    <sf:input id="id" path="id" name="id" type="hidden"
                              placeholder="id" class="form-control input-md"></sf:input>


                    <sf:input id="firstName" path="firstName" name="firstName" type="text"
                              placeholder="First Name" class="form-control input-md"></sf:input>

                    <sf:errors path="firstName" cssClass="alert-danger"></sf:errors>

                </div>
            </div>


            <div class="form-group">
                <label class="col-md-4 control-label" for="lastName">Last Name</label>
                <div class="col-md-4">
                    <sf:input id="lastName" path="lastName" name="lastName" type="text"
                              placeholder="Last Name" class="form-control input-md"></sf:input>

                    <sf:errors path="lastName" cssClass="alert-danger"></sf:errors>

                </div>
            </div>



            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="userName">User
                    Name</label>
                <div class="col-md-4">
                    <sf:input id="userName" path="userName" name="userName"
                              type="text" placeholder="User Name" class="form-control input-md"></sf:input>
                    <sf:errors path="userName" cssClass="alert-danger"></sf:errors>
                </div>
            </div>





            <div class="form-group">
                <label class="col-md-4 control-label" for="mobile">Mobile
                    No</label>
                <div class="col-md-4">
                    <sf:input id="mobile" path="mobile" name="mobile" type="text"
                              placeholder="Mobile Number" class="form-control input-md"></sf:input>
                    <sf:errors path="mobile" cssClass="alert-danger"></sf:errors>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="address">Address</label>
                <div class="col-md-4">
                    <sf:input id="address" path="address" name="address" type="text"
                              placeholder="Address" class="form-control input-md"></sf:input>
                    <sf:errors path="address" cssClass="alert-danger"></sf:errors>
                </div>
            </div>

            <!-- Text input-->
            <div class="form-group">
                <label class="col-md-4 control-label" for="password">Password</label>
                <div class="col-md-4">
                    <sf:input id="password" path="password" name="password"
                              type="password" placeholder="Password"
                              class="form-control input-md"></sf:input>
                    <sf:errors path="password" cssClass="alert-danger"></sf:errors>
                </div>
            </div>

            <!-- Button -->
            <div class="form-group">
                <label class="col-md-4 control-label" for="register"></label>
                <div class="col-md-4">
                    <button id="register" name="register" class="btn btn-primary">Register</button>
                </div>
            </div>


        </fieldset>
    </sf:form>
</div>
</body>
</html>
