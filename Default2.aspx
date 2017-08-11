<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Public/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="panel-primary">
            <div class="panel-heading">Ejemplo Dos</div>
            <div class="panel-body">
                <p><%= Clase.miMetodo() %></p>
                <p><%= Clase.otroMetodo(5,10) %></p>
            </div>
        </div>
    </div>
</body>
</html>
