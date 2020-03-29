<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demarer.aspx.cs" Inherits="RecetteProject.Demarer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Recettes ASP.Net<br />
            <asp:Label ID="Label1" runat="server" Text="Bonjour "></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">Acceder au site</asp:HyperLink>
            <br />
            <asp:Button ID="BtnValider" runat="server" OnClick="BtnValider_Click" Text="Valider" Visible="False" />
        </div>
    </form>
</body>
</html>
