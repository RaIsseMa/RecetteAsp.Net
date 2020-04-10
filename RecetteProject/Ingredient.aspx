<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ingredient.aspx.cs" Inherits="RecetteProject.Ingredient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 115px;
        }
        .auto-style4 {
            width: 143px;
        }
        .style{
            width:100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">
                <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">DataList</asp:LinkButton>
            </td>
            <td class="auto-style4">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">DetailsView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">FormView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">GridView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">ListView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Repeater</asp:LinkButton>
            </td>
        </tr>
    </table>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="numIng" DataSourceID="SqlDataSource2" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <ItemTemplate>
                    numIng:
                    <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    nomIng:
                    <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="numIng" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="513px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="numIng" HeaderText="numIng" InsertVisible="False" ReadOnly="True" SortExpression="numIng" />
                    <asp:BoundField DataField="nomIng" HeaderText="nomIng" SortExpression="nomIng" />
                    <asp:BoundField DataField="puIng" HeaderText="puIng" SortExpression="puIng" />
                    <asp:BoundField DataField="uniteMesuring" HeaderText="uniteMesuring" SortExpression="uniteMesuring" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerSettings FirstPageText="Premier" LastPageText="Dernier" Mode="NextPreviousFirstLast" NextPageText="Suivant" PreviousPageText="Precedent" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
        </asp:View>
        <asp:View ID="View3" runat="server">
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="numIng" DataSourceID="SqlDataSource2" ForeColor="#333333" CssClass="style">
                <EditItemTemplate>
                    numIng:
                    <asp:Label ID="numIngLabel1" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    nomIng:
                    <asp:TextBox ID="nomIngTextBox" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:TextBox ID="puIngTextBox" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:TextBox ID="uniteMesuringTextBox" runat="server" Text='<%# Bind("uniteMesuring") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    nomIng:
                    <asp:TextBox ID="nomIngTextBox" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:TextBox ID="puIngTextBox" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:TextBox ID="uniteMesuringTextBox" runat="server" Text='<%# Bind("uniteMesuring") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    numIng:
                    <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    nomIng:
                    <asp:Label ID="nomIngLabel" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:Label ID="puIngLabel" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Bind("uniteMesuring") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:FormView>
        </asp:View>
        <asp:View ID="View4" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="numIng" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="33px" ImageUrl="~/ImagesForStyle/pencil.png" Width="21px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="38px" ImageUrl="~/ImagesForStyle/trash.png" Width="35px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="numIng" HeaderText="numIng" InsertVisible="False" ReadOnly="True" SortExpression="numIng" />
                    <asp:BoundField DataField="nomIng" HeaderText="nomIng" SortExpression="nomIng" />
                    <asp:BoundField DataField="puIng" HeaderText="puIng" SortExpression="puIng" />
                    <asp:BoundField DataField="uniteMesuring" HeaderText="uniteMesuring" SortExpression="uniteMesuring" />
                </Columns>
            </asp:GridView>
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="numIng" DataSourceID="SqlDataSource2">
                <AlternatingItemTemplate>
                    <span style="">numIng:
                    <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    nomIng:
                    <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                    <br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">numIng:
                    <asp:Label ID="numIngLabel1" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    nomIng:
                    <asp:TextBox ID="nomIngTextBox" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:TextBox ID="puIngTextBox" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:TextBox ID="uniteMesuringTextBox" runat="server" Text='<%# Bind("uniteMesuring") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">nomIng:
                    <asp:TextBox ID="nomIngTextBox" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:TextBox ID="puIngTextBox" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:TextBox ID="uniteMesuringTextBox" runat="server" Text='<%# Bind("uniteMesuring") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">numIng:
                    <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    nomIng:
                    <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">numIng:
                    <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    nomIng:
                    <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                    <br />
                    puIng:
                    <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                    <br />
                    uniteMesuring:
                    <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </asp:View>
        <asp:View ID="View6" runat="server">
            <br />
            <br />

            <p>On a une liste d'ingredients qu'on va presenter ici :</p>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <img src="ImagesForStyle/cook.png" style="width:40px;height:45px"/>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("nomIng") %>'  ></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# "Cet ingredient coute "+ Eval("puIng") +" pour chaque " + Eval("uniteMesuring")%>'   ></asp:Label>
                    <br />
                    <br />

                </ItemTemplate>
            </asp:Repeater>
        </asp:View>
    </asp:MultiView>
    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" DeleteCommand="DELETE FROM [ingredient] WHERE [numIng] = @original_numIng" InsertCommand="INSERT INTO [ingredient] ([nomIng], [puIng], [uniteMesuring]) VALUES (@nomIng, @puIng, @uniteMesuring)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * from [Ingredient]" UpdateCommand="UPDATE [ingredient] SET [nomIng] = @nomIng, [puIng] = @puIng, [uniteMesuring] = @uniteMesuring WHERE [numIng] = @original_numIng ">
        <DeleteParameters>
            <asp:Parameter Name="original_numIng" Type="Int32" />
            <asp:Parameter Name="original_nomIng" Type="String" />
            <asp:Parameter Name="original_puIng" Type="Decimal" />
            <asp:Parameter Name="original_uniteMesuring" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nomIng" Type="String" />
            <asp:Parameter Name="puIng" Type="Decimal" />
            <asp:Parameter Name="uniteMesuring" Type="String" />
            <asp:Parameter />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nomIng" Type="String" />
            <asp:Parameter Name="puIng" Type="Decimal" />
            <asp:Parameter Name="uniteMesuring" Type="String" />
            <asp:Parameter Name="original_numIng" Type="Int32" />
            <asp:Parameter Name="original_nomIng" Type="String" />
            <asp:Parameter Name="original_puIng" Type="Decimal" />
            <asp:Parameter Name="original_uniteMesuring" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    </asp:Content>
