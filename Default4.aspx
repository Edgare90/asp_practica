<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <% 
        Colaboracion colaboracion = new Colaboracion();
        colaboracion.SetNombre("Edgar");
    %>
    <p> <%= colaboracion.retorno() %></p>
</body>
</html>
