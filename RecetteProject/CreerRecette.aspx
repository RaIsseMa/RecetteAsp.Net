<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreerRecette.aspx.cs" Inherits="RecetteProject.CreerRecette" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Creer Recette</title>
    <link href="styleCss/StyleSheet1.css" rel="stylesheet" />
    <script>
        function uploadimg(img) {
            
            if (img.value != '') {
                document.getElementById('<%= btnSaveImg.ClientID %>').click();
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div style="margin-top:50px;text-align:center">
            <asp:Label ID="Label3" runat="server" Text="Creer Recette" Font-Bold="True" Font-Size="36px" ForeColor="#006699"></asp:Label>
            <br />
            <table style="width:83%;" class="table-style">
                <tr>
                    <td class="style1">Nom De la Recette</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox1" runat="server" Width="506px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="One">Entrer le nom de recette</asp:RequiredFieldValidator>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Cet nom est deja exciste" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style1">Theme</td>
                    <td class="style3">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nomTheme" DataValueField="codeTheme" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:Label ID="themelbl" runat="server" ForeColor="White"></asp:Label>

                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
                            </Triggers>
                        </asp:UpdatePanel>
                        
                    </td>
                </tr>
                <tr>
                    <td class="style1">Temps de preparation</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="One">Entrer temps de preparation</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RegularExpressionValidator" ValidationExpression="\d+" ForeColor="Red" ValidationGroup="One">Entrer un valid number</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">Niveau</td>
                    <td class="style3">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="353px">
                            <asp:ListItem Value="facile">Facile</asp:ListItem>
                            <asp:ListItem Selected="True" Value="moyen">Moyen</asp:ListItem>
                            <asp:ListItem Value="difficile">Difficile</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">Photo</td>
                    <td class="style3">
                        <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Entrer une valide image" Visible="False"></asp:Label>
                        <asp:Button ID="btnSaveImg" runat="server" OnClick="btnSaveImg_Click" Text="Button" style="display:none" />
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="299px" accept=".png,.jpg,.jpeg"/>
                    </td>
                </tr>
                <tr>
                    <td class="style1">Methode de preparation</td>
                    <td class="style3">
                        <asp:TextBox ID="TextBox3" runat="server" Height="162px" Width="435px" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="One">Enter methode preparation de recette</asp:RequiredFieldValidator>
                    </td>
                    <td class="style2">
                        <asp:Image ID="Image1" runat="server" Width="131px" ImageUrl="~/Images/Recette/DefaultRecette.jpg" />
                    </td>
                </tr>
                <tr>
                    <td class="style1">&nbsp;</td>
                    <td class="style1">
                        <asp:Button ID="btnCreer" runat="server" Text="Creer" OnClick="btnCreer_Click" ValidationGroup="One" />
                    </td>
                    <td class="style2">&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT [codeTheme], [nomTheme] FROM [theme]"></asp:SqlDataSource>

        

</asp:Content>
