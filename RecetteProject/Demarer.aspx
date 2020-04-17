<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demarer.aspx.cs" Inherits="RecetteProject.Demarer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demarer</title>
    <link href="styleCss/StyleForDemarer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="divstyle">
            <img src="ImagesForStyle/recettetextwhite.png" style="height:200px"/>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Bonjour " Font-Bold="True" Font-Size="22px" ForeColor="White"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Visible="False" CssClass="txt"></asp:TextBox>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreerRecette.aspx" Font-Size="18px" Font-Underline="True" ForeColor="White">Acceder au site</asp:HyperLink>
            <br />
            <asp:Button ID="BtnValider" runat="server" OnClick="BtnValider_Click" Text="Valider" Visible="False" CssClass="validerbtn" />
        </div>
    </form>
</body>
</html>
