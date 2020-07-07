<%--
  Created by IntelliJ IDEA.
  User: loren
  Date: 04/07/2020
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="informazioni_produttore" class="it.unisa.server.OliCilento.Beans.Produttore"></jsp:useBean>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Produttore</title>
</head>
<p>
    <header>
        <h1>Oli Cilento</h1>
        <form>
            <input type="submit" value="Registrati come Produttore">
        </form>
        <form>
            <input type="submit" value="Accedi">
        </form>
    </header>


<h1>Nome: ${informazioni.nome} ${informazioni.cognome}</h1>
<p>Età: ${informazioni.anni}</p>
<p>Paese di provenienza: ${informazioni.paese}</p>
<p>Numero di telefono: ${informazioni.telefono}</p>

<p>Quantità disponibile: ${risorse}</p>

<textarea disabled rows="15" cols="110">
    ${informazioni.biografia}
    </textarea>


</body>
</html>
