<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Maven+Pro:wght@600&display=swap" rel="stylesheet">

    <title>User Details</title>
<style>

      body{
        background-image: url(https://img.freepik.com/free-vector/abstract-big-data-concept-background_23-2148324270.jpg);
      }

      h2{
        text-align:center;
        font-family: 'Bebas Neue', cursive;
        font-family: 'Maven Pro', sans-serif;
        font-size: 60px;
        color:#E0E0E0;
      }

      .container{
        margin-left: 15%;
        margin-top: 5%;
        width:70%;
        height: 70%;
        border-radius: 10px;
        text-align: center;

      }

      #customers {
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }

      #customers td, #customers th {
        border: 1px solid #ddd;
        padding: 8px;
      }

      #customers tr:nth-child(even){background-color: #d9d9d9;}

      #customers tr:nth-child(odd){background-color: #f2f2f2;}

      #customers tr:hover {background-color: #adc2eb;}

      #customers th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: left;
        background-color:#ff8566;
        color: white;
}
</style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>
<br><br>
<h2>User Details</h2>
<div class="container">
    <table id="customers">
        <tr>
            <th>Full Name</th>
            <th>Email</th>
            <th>Current_credit</th>
            <th>Action</th>

        </tr>

        <c:forEach var="temp" items="${users}">
            <tr>
                <td>${temp.name}</td>
                <td>${temp.email}</td>
                <td>${temp.current_credit}</td>
                <td>
                    <form:form action="transferCredit" method="post">
                    <input type="hidden" value="${temp.current_credit}" name="creditAmount"/>
                    <input type="hidden" value="${temp.name}" name="name"/>
                    <button type="submit" class="btn btn-outline-dark">Transfer Credit</button>
                    </form:form>
                </td>
             </tr>
        </c:forEach>

    </table>
    <br>
    <br>

<form:form action="home" method="get">
<button type="submit" class="btn btn-warning btn-lg">Back</button>
</form:form>
</br></br>
</div>
</br></br>
</body>
</html>
