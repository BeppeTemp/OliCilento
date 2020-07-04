<%--
  Created by IntelliJ IDEA.
  User: loren
  Date: 04/07/2020
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Registrazione</title>

    <link rel="stylesheet" type="text/css" href="css/registrazione.css">

</head>
<body>

<header>
    <h1>Oli Cilento</h1>
</header>

<div>
    <h1>Registrazione</h1>

    <form action="ServletRegistrazione"  method="post" id="registrazione">


        <span>Nome</span>
        <input type="text" name="nome" placeholder="Francesco"  required><br>


        <span>Cognome</span>
        <input type="text" name="cognome" placeholder="Rossi"  required><br>


        <span>E-mail</span>
        <input type="email" name="mail" placeholder="Francesco.Rossi@gmail.com"  required><br>


        <span>Età</span>
        <input type="text" name="anni" placeholder="26"  required><br>


        <span>Paese di Provenienza</span>
        <input type="text" name="paese" placeholder="Salerno"  required><br>


        <span>Numero di telefono</span>
        <input type="text" name="telefono" placeholder="32895XXXXX"  required><br>


        <span>Password</span>
        <input type="password" name="password" maxlength="100" minlength="8" required><br>


        <span>Ripeti Password</span>
        <input type="password" name="re-password" maxlength="100" minlength="8" required><br>


        <input class="button" type="submit" value="Registrati"><br>
    </form>
</div>


</body>
</html>
