<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Validacion</title>
    <link href="Public/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="panel-primary">
            <div class="panel-heading">Controles de validacion</div>
            <div class="panel-body">
                <form runat="server" method="post" name="form">
                    <p>
                        <asp:ValidationSummary runat="server" HeaderText="" DisplayMode="BulletList"  CssClass="alert alert-danger"/>
                    </p>
                    <p>
                        <asp:Label runat="server">Nombre : </asp:Label>
                        <asp:TextBox ID="nombre" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="nombre" ErrorMessage="El campo nomnbre es requerido" Display="None"></asp:RequiredFieldValidator>
                    </p>
                    <hr />
                      <p>
                        <asp:Label runat="server">e-mail : </asp:Label>
                        <asp:TextBox ID="correo" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="correo" ErrorMessage="El campo email es requerido" Display="None"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ControlToValidate="correo" ErrorMessage="El correo no es valido" Display="None" ValidationExpression="^[\w-]+@[\w-]+\.(com|net|org|edu|mil|gmail)$" runat="server"></asp:RegularExpressionValidator>  
                    </p>

                    <p>
                        <asp:Label runat="server">Pais</asp:Label>
                        <asp:DropDownList ID="pais" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">Seleccione una opcion</asp:ListItem>
                            <asp:ListItem Value="1">Chile</asp:ListItem>
                            <asp:ListItem Value="2">Canadá</asp:ListItem>
                            <asp:ListItem Value="3">España</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="El pais es un campo obligatorio"  ControlToValidate="pais" InitialValue="0" Display="None"></asp:RequiredFieldValidator>
                    </p>

                    <p>
                        <asp:Label runat="server">Opcion dos:</asp:Label>
                        <asp:DropDownList ID="opcion2" runat="server" CssClass="form-control"></asp:DropDownList>

                        <asp:CustomValidator runat="server" ControlToValidate="opcion2" ErrorMessage="Seleccione una opcion" Display="None" ClientValidationFunction="procesarFormulario"></asp:CustomValidator>
                    </p>

                    <asp:Button ID="enviar_form" runat="server" Text="Enviar" CssClass="btn btn-default" OnClick="ProcesarFormulario" />
                </form>
                <hr />
                <ul>
                    <li><asp:Label ID="resultado_nombre" runat="server"></asp:Label></li>
                </ul>
            </div>
        </div>
    </div>
</body>
</html>
<script type="text/javascript">
    function procesarFormulario(source, arguments)
    {
        alert(arguments.Value);
        var valor = arguments.Value;
        if (valor == "Seleccione") {
            arguments.IsValid = false;
            return;
        } else
        {
            arguments.IsValid = true;
            return;
        }
    }
</script>