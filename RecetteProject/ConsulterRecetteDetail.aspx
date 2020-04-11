<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsulterRecetteDetail.aspx.cs" Inherits="RecetteProject.ConsulterRecetteDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
        .auto-style2 {
            width: 40%;
        }
        .auto-style3 {
            width: 90%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <table style="width:100%;">
                <tr style="width:100%">
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="●"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Date de creation :"></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Temps estime :"></asp:Label>
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Cout estime :"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" Height="279px" Width="288px" />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Composition"></asp:Label>
                        <br />
                        <asp:Repeater ID="Repeater1" runat="server" >
                            <ItemTemplate>
                                <asp:Label ID="lblRp" runat="server" Text='<%# "- "+Eval("qteUtilise")+" "+Eval("uniteMesuring")+" "+Eval("nomIng") %>'></asp:Label>
                                <br />
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <p>Methode de preparation</p>
            <p>
                <asp:Label ID="Label7" runat="server" Text="Label" CssClass="auto-style3" ></asp:Label>
            </p>
            
        </div>
    </form>
</body>
</html>
