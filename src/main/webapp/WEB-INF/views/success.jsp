<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Transfer Credit</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


<style>

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

    h3{

           text-align:center;
           font-family: 'Bebas Neue', cursive;
           font-family: 'Maven Pro', sans-serif;
           font-size: 40px;
           color:#003366;
           padding-top:30px;
      }

  label {
      font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
      color:#003366;
  }

</style>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</head>
<body>


<div id="box">
<h3>Transaction successful</h3>
<label> Your available credit is : ${balance} </label>
<br><br>

<form:form action="home" method="get">
    <button type="submit" class="btn btn-primary btn-sm">Back to Home</button>
</form:form>

</div>
</body>
</html>


