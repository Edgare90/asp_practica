﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tabla.aspx.cs" Inherits="Tabla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <%
        foreach (string datos in getLista())
        { %>
        
               <li> <%= datos %></li>

         <%
        }
        %>
</body>
</html>