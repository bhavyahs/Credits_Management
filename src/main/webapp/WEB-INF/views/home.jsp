<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <title>Credit Management System</title>
  <meta charset = "utf-8">
     <meta name = "viewport" content = "width=device-width, initial-scale = 1">
          <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

          <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Maven+Pro:wght@600&display=swap" rel="stylesheet">
<style>
body{
  text-align:center;
   background-image: url(https://img.freepik.com/free-vector/abstract-big-data-concept-background_23-2148324270.jpg);
 }

h1{
           text-align:center;
           font-family: 'Bebas Neue', cursive;
           font-family: 'Maven Pro', sans-serif;
           font-size: 60px;
           color:#E0E0E0;
}

</style>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>

<body>

<br><br>
<h1 class="no-background">Credits Management</h1>

<br><br><br><br><br><br>

<div class="container-fluid">
<div id="button1">
<form:form method="POST" action="user" >
    <button type="submit" class="btn btn-warning btn-lg">View All Users</button>
</form:form>
</div>
</div>
</body>
</html>
