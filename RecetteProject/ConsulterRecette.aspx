<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ConsulterRecette.aspx.cs" Inherits="RecetteProject.ConsulterRecette" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="style4" style="width:100%;text-align:center"><asp:Label ID="Label2" runat="server" Text="Consulter Recette par theme" Font-Bold="True" Font-Size="22px" ForeColor="#006699"></asp:Label>
    </p>
    <br />
    <p style="width:100%;text-align:center">
    <asp:DropDownList ID="dropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nomTheme" DataValueField="codeTheme" OnSelectedIndexChanged="dropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
    </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT [codeTheme], [nomTheme] FROM [theme]"></asp:SqlDataSource>
     
    <asp:DataList ID="DataList1" runat="server" DataKeyField="numRec" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Size="20px" ForeColor="#0033CC">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ConsulterRecetteDetail.aspx?numRec="+Eval("numRec") %>' Text='<%# Eval("nomRec") %>'></asp:HyperLink>
            <br />
        </ItemTemplate>
    </asp:DataList>
       
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT nomRec, numRec FROM recette WHERE (codeTheme = @codeTheme)">
        <SelectParameters>
            <asp:ControlParameter ControlID="dropDownList1" DefaultValue="0" Name="codeTheme" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
