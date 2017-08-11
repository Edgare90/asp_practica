<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Trabajo comunicando clases entre si</title>
</head>
<body>
    <h1>Herencia</h1>
    <%  Hija hija = new Hija();
           hija.SetNombre("Edgare");%>
        <p><%= hija.GetNombre() %></p>
</body>
</html>
