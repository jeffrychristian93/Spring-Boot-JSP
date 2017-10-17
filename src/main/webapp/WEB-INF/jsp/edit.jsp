<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Example</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
    <link href="/css/sticky-footer-navbar.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <ul class="nav navbar-nav">
            <li class="active"><a href="index">Home</a></li>
        </ul>
    </div>
</nav>

<div class="container">

<h3>User Registration</h3>
<form action='/index/update' method='post'>
 
    <table class='table table-hover table-responsive table-bordered'>
 
        <tr>
            <td><b>Name</b></td>
            <td><input type='text' name='name' class='form-control' value="${user.name}" /></td>
        </tr>
 
        <tr>
            <td><b>Surname</b></td>
            <td><input type='text' name='surname' class='form-control' value="${user.surname}" /></td>
        </tr>
 
        <tr>
            <td><b>Adress</b></td>
            <td><input type='text' name='adress' class='form-control' size="20" value="${user.adress}" /></td>
            
        </tr>
 
 			<input type='hidden' id='id' rows='5' class='form-control' name='id' value="${user.id}"/>
        <tr>
            <td></td>
            <td>
                <button type="submit" class="btn btn-primary">Update User Information</button>
            </td>
        </tr>
 
    </table>
</form>

</div>

<footer class="footer">
    <div class="container">
        <p class="text-muted">Created by JC</p>
    </div>
</footer>
</body>
</html>