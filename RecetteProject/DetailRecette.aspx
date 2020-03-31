<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetailRecette.aspx.cs" Inherits="RecetteProject.DetailRecette" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detail Recette</title>
    <link href="styleCss/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Bonjour"></asp:Label>
<asp:Label ID="Label2" runat="server" Text="En Ligne :" CssClass="onlinelbl"></asp:Label>
            <br />
            <br />
            <hr />
            <asp:Label ID="nomRecettelb" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="136px">
                <Columns>
                    <asp:TemplateField HeaderText="Check">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="nomIng" SortExpression="nomIng">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("nomIng") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("nomIng") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Utiliser" />
            <asp:GridView ID="GridView2" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="Quantite Utilise">
                        <ItemTemplate>
                            <asp:TextBox ID="qntTxt" runat="server"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Valider" />
            <br />

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT [nomIng] FROM [ingredient]"></asp:SqlDataSource>
    </form>
</body>
</html>
