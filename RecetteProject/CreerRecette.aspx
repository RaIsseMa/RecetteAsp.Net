<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreerRecette.aspx.cs" Inherits="RecetteProject.CreerRecette" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleCss/StyleSheet1.css" rel="stylesheet" />
    <script src="js/JavaScriptCreerRecettePage.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 325px;
            text-align: right;
        }
        .auto-style2 {
            width: 252px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Bonjour"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="En Ligne :" CssClass="onlinelbl"></asp:Label>
            <br />
            <br />
            <hr />
            <asp:Label ID="Label3" runat="server" Text="Creer Recette"></asp:Label>
            <br />
            <table style="width:83%;">
                <tr>
                    <td class="auto-style1">Nom De la Recette</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="506px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Theme</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nomTheme" DataValueField="codeTheme" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:Label ID="themelbl" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Temps de preparation</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Niveau</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="353px">
                            <asp:ListItem Value="facile">Facile</asp:ListItem>
                            <asp:ListItem Selected="True" Value="moyen">Moyen</asp:ListItem>
                            <asp:ListItem Value="difficile">Difficile</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Photo</td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="299px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Methode de preparation</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="162px" Width="435px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style2">
                        <asp:Image ID="Image1" runat="server" Width="131px" ImageUrl="~/Images/Recette/DefaultRecette.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnCreer" runat="server" Text="Creer" OnClick="btnCreer_Click" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT [codeTheme], [nomTheme] FROM [theme]"></asp:SqlDataSource>
    </form>
</body>
</html>
