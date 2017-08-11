<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Primer ejemplo</title>
    <link href="Public/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
   <%
       string texto = "Arreglos";
   %>

    <%
        Response.Write(texto);
    %>
   
    <%
        string[]  paises = new string[10];
        paises[0] = "Chile";
        paises[1] = "Peru";
        paises[2] = "Colombia";
        paises[3] = "Venezuela";
        paises[4] = "Noruega";
        paises[5] = "Mexico";
        paises[6] = "Bolivia";
        paises[7] = "Ecuador";
        paises[8] = "Costa Rica";
        paises[9] = "Egipto";

        string[,] paisCapital = new string[10, 2]
        {
            {"Chile","Santiago" },
            {"Peru","Lima" },
            {"Colombia","Bogota" },
            {"Venezuela","Caracas" },
            {"Noruega","Oslo" },
            {"Mexico","Ciudad de Mexico" },
            {"Bolivia","Sucre" },
            {"Ecuador","Quito" },
            {"Costa Rica","San Jose" },
            {"Egipto","El Cairo" },
        };


        foreach (string elemnto in paises)
        {
            Response.Write(elemnto);
        }
    %>

    <p>
        <h1>Arreglo Multidimencional</h1>
        <ul>
            <%
                for (int i=0;i<paisCapital.GetLength(0);i++)
                { %>
                    <li>Pais : <%= paisCapital[i,0] %> Capital : <%= paisCapital[i,1]  %> </li>
            <%
                }
            %>
        </ul>
    </p>
    <%
        //variable de instancia
        Calculos calculo = new Calculos();
        Clase clase = new Clase();
        clase.SetNumeroUno();

        %>

    <p><%= calculo.numero1 %></p>

    <div class="container">
        <div class="panel-primary">
            <div class="panel-heading">Clases y Metodos</div>
                <div class="panel-body">
                    <p><%= clase.GetNumeroUno() %></p>
                </div>
        </div>
    </div>

</body>
</html>
