<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="ConsulterRecette.aspx.cs" Inherits="RecetteProject.ConsulterRecette" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Consulter Recette par theme"></asp:Label>
    <br />
    <asp:DropDownList ID="dropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nomTheme" DataValueField="codeTheme" OnSelectedIndexChanged="dropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT [codeTheme], [nomTheme] FROM [theme]"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="numRec" DataSourceID="SqlDataSource2">
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
