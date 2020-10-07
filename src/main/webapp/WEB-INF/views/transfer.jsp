<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Transfer Credits</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Maven+Pro:wght@600&display=swap" rel="stylesheet">

     <style media="screen">

    body{
       background-image: url(https://img.freepik.com/free-vector/abstract-big-data-concept-background_23-2148324270.jpg);

    }
    #box{
       margin-left: 15%;
       margin-top: 5%;
       width: 70%;
       height: 250px;
       border-radius: 10px;
       text-align: center;
       font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
       background-color: lightgray;
    }

    label {
         font-family: "Century Gothic", CenturyGothic, AppleGothic, sans-serif;
         text-align: left;
         padding-top: 20px;
    }

    select{
       width: 20%;
       height: 5%;
       transform: scale(0.9);
    }
    h2{
            text-align:center;
            font-family: 'Bebas Neue', cursive;
            font-family: 'Maven Pro', sans-serif;
            font-size: 60px;
            color:#E0E0E0;
      }

     #creditInput {
          width: 20%;
     }

    .btn btn-primary btn-sm{
       width: 20%;

     }

      .bt2{margin-top:-153px;margin-left:100px;}

      .bt1{margin-right:200px;}

    </style>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(function() {
    $('#EnteredCredit').blur(function() {
    if ($('#EnteredCredit').val() > ${credit}) {
    alert('Insufficient Credits');
    return false;
    } else { return true; }
    });

});

</script>
</head>
<body>
<h2>Transfer Credits</h2>

<div id="box">
<label>Your available credit points : </label> ${credit}

<form:form action="submitCredit" method="get">
<label>Transfer to </label>
<select name="toUser" required>
    <option value="">-select-</option>
    <c:forEach var="t" items="${toUsers}">
    <option value="${t.name}" >${t.name}</option>
    </c:forEach>
</select>

<input type="hidden" value="${fullName}" name="name"/>
<label>Enter the credit to transfer &nbsp;</label> <input type="text" pattern="[0-9]+" title="Only numbers allowed" required id="EnteredCredit" name="creditToSend"/>
<br><br>
<button type="submit" class="btn btn-primary btn-sm bt1">Send</button>
</form:form>
<br><br>
<form:form action="user" method="post">
    <button type="submit" class="btn btn-primary btn-sm bt2">Back to Users List</button>
</form:form>

</div>
</body>
</html>
