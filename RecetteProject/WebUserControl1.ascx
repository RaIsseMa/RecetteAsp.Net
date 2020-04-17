<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="RecetteProject.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
        height: 250px;
    }
    .back-style{
        background-color:#333;
        border: 2px solid white;
        margin:0;
        padding:8px;
    }
    img {
        margin: 0;
        width: 100%;
       
    }

</style>


    <img alt="recette" class="auto-style1" src="ImagesForStyle/recettehead.png" />
    <%--<table style="width: 100%;position:relative;margin:-10px">
        <tr style="width:100%">
            <td class="back-style" style="width:70%">
                <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal"  Font-Bold="True" ForeColor="White" >
    <Items>
        <asp:MenuItem NavigateUrl="~/Themes.html" Text="Theme" Value="Theme" ></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Ingredient.aspx" Text="Ingredient" Value="Ingredient"></asp:MenuItem>
        <asp:MenuItem Text="Recette" Value="Recette">
            <asp:MenuItem NavigateUrl="~/CreerRecette.aspx" Text="Creer Recette" Value="Creer Recette"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ConsulterRecette.aspx" Text="Consulter Recette" Value="Consulter Recette"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
            </td>
            <td class="back-style" style="width:30%">
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="16px" ForeColor="White"></asp:Label>
            </td>
        </tr>
    </table>--%>
<div style="width:100vw;position:relative;margin-top:-5px">
    <div class="back-style" style="width:70%;float:left">
             <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal"  Font-Bold="True" ForeColor="White" >
    <Items>
        <asp:MenuItem NavigateUrl="~/Themes.html" Text="Theme" Value="Theme" ></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/Ingredient.aspx" Text="Ingredient" Value="Ingredient"></asp:MenuItem>
        <asp:MenuItem Text="Recette" Value="Recette">
            <asp:MenuItem NavigateUrl="~/CreerRecette.aspx" Text="Creer Recette" Value="Creer Recette"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/ConsulterRecette.aspx" Text="Consulter Recette" Value="Consulter Recette"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>
    </div>
    <div class="back-style" style="width:27%;float:right;">
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="16px" ForeColor="White"></asp:Label>
    </div>
</div>




