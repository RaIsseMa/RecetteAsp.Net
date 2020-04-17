<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailRecette.aspx.cs" Inherits="RecetteProject.DetailRecette" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detail Recette</title>
    <link href="styleCss/StyleForDetailRecette.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Bonjour"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="En Ligne :" CssClass="onlinelbl"></asp:Label>
            <br />
            <br />
            <hr />
            <p style="width:100%;text-align:center">
            <asp:Label ID="nomRecettelb" runat="server" Text="Label" Font-Bold="True" Font-Size="32px" ForeColor="White"></asp:Label>
            </p>
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="136px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ingredient" SortExpression="nomIng">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nomIng") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nomIng") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="54px" ImageUrl="~/ImagesForStyle/next.png" OnClick="ImageButton1_Click" Width="64px" />
                        <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/ImagesForStyle/correct.png" OnClick="ImageButton2_Click" Width="59px" Visible="False" />
                    </td>
                    <td>
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField HeaderText="Quantite Utilise">
                        <ItemTemplate>
                            <asp:TextBox ID="qntTxt" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                    </td>
                </tr>
                </table>
            <asp:Label ID="errorlbl" runat="server" ForeColor="Red" Text="Entrer quantite" Visible="False"></asp:Label>
            <br />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT [nomIng] FROM [ingredient]"></asp:SqlDataSource>
    </form>
</body>
</html>
