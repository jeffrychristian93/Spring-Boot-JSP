<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<jsp:include page="header.jsp"></jsp:include>--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Example</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
    <link href="/css/sticky-footer-navbar.css" rel="stylesheet"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <%--<link rel="stylesheet" type="text/css" href="/css/datatables.css"/>--%>
    <%--<link rel="stylesheet" type="text/css" href="/css/datatables.min.css"/>--%>
<%----%>
    <%--<script type="text/javascript" src="/js/datatables.js"></script>--%>
    <%--<script type="text/javascript" src="/js/datatables.min.js"></script>--%>

    <%--<c:url value="/css/datatables.min.css" var="jstlCss" />--%>
    <%--<link href="${jstlCss}" rel="stylesheet" />--%>

    <%--<c:url value="/css/datatables.css" var="jstlCsss" />--%>
    <%--<link href="${jstlCsss}" rel="stylesheet" />--%>

    <%--<c:url value="/js/datatables.min.js" var="jstlJs" />--%>
    <%--<link href="${jstlJs}" rel="stylesheet" />--%>

    <%--<c:url value="/js/datatables.js" var="jstlJss" />--%>
    <%--<link href="${jstlJss}" rel="stylesheet" />--%>

    <%--<script type="text/javascript" src="/datatables.min.js"></script>--%>
    <%--<script type="text/javascript" src="/datatables_data_sources.js"></script>--%>

    <%--<script src="/jquery.dataTables.js"></script>--%>
    <%--<script src="/dataTables.bootstrap.js"></script>--%>


    <%--<link href="<c:url value="datatables.min.css" />" rel="stylesheet">--%>
    <%--<script src="<c:url value="datatables.min.js" />"></script>--%>

    <%--<link rel="stylesheet" type="text/css" href="datatables.min.css"/>--%>
    <%--<script type="text/javascript" src="datatables.min.js"></script>--%>

    <%--<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.css">--%>
    <%--<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.js"></script>--%>

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
    <br>
    <form action='/index/add' method='post'>

        <table class='table table-hover table-responsive table-bordered'>

            <tr>
                <td><b>Name</b></td>
                <td><input type='text' name='name' class='form-control' required/></td>
            </tr>

            <tr>
                <td><b>Surname</b></td>
                <td><input type='text' name='surname' class='form-control' required/></td>
            </tr>

            <tr>
                <td><b>Adress</b></td>
                <td><input type='text' name='adress' class='form-control' size="20" required/></td>

            </tr>


            <tr>
                <td></td>
                <td>
                    <button type="submit" class="btn btn-primary">Register</button>
                </td>
            </tr>

        </table>
        <b><c:out value="${danger}"></c:out></b>
    </form>


    <h3>List Of Users</h3>
    <br>
    <form action="/index/search" method="post">
        <table>
            <tr>
                <td>
                    <input placeholder="name.." type='text' name='input1' class='form-control' size="20"/>
                </td>
                <td>
                    <input placeholder="surename.." type='text' name='input2' class='form-control' size="20"/>
                </td>
                <td>
                    <span></span><button type="submit" class="btn btn-primary">Search</button>
                </td>
            </tr>
        </table>
    </form>
    <table id="table_id" class="display">

        <thead>
        <tr>
            <th><b>User Name</b></th>
            <th><b>User Surname</b></th>
            <th><b>User Adress</b></th>
            <th><b>Transactions</b></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="lou">
            <tr>
                <td><c:out value="${lou.name}"></c:out></td>
                <td><c:out value="${lou.surname}"></c:out></td>
                <td><c:out value="${lou.adress}"></c:out></td>

                <td>
                    <a href="/index/${lou.id}/edit">
                        <button type="submit" class="btn btn-primary">Edit User</button>
                    </a>
                </td>
                <td>
                    <a href="/index/${lou.id}/delete">
                        <button type="submit" class="btn btn-primary">Delete User</button>
                    </a>
                </td>
            </tr>

        </c:forEach>
        </tbody>
    </table>
</div>

<footer class="footer">
    <div class="container">
        <p class="text-muted">Created by JC</p>
    </div>
</footer>
</body>

<%--<script async>--%>
    <%--$(document).ready( function () {--%>
        <%--$('#table_id').DataTable({--%>
            <%--"lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],--%>
            <%--"drawCallback": function( settings ) {--%>
                <%--$(this).css("table-layout","fixed");--%>
            <%--}--%>
        <%--});--%>
    <%--} );--%>
<%--</script>--%>
</html>

<%--<jsp:include page="footer.jsp"></jsp:include>--%>