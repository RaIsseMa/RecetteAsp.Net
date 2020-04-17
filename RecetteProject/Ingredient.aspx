<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Ingredient.aspx.cs" Inherits="RecetteProject.Ingredient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">      
        .style{
            width:95%;
            margin-bottom:20px;
            margin-left:30px;
        }
        .style2{
            margin-left:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width:100%;margin-top:60px">
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton0" runat="server" OnClick="LinkButton_Click" Font-Bold="True" Font-Size="18px" ForeColor="#006699">DataList</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton_Click" Font-Bold="True" Font-Size="18px" ForeColor="#006699">DetailsView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton_Click" Font-Bold="True" Font-Size="18px" ForeColor="#006699">FormView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton_Click" Font-Bold="True" Font-Size="18px" ForeColor="#006699">GridView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton_Click" Font-Bold="True" Font-Size="18px" ForeColor="#006699">ListView</asp:LinkButton>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton_Click" Font-Bold="True" Font-Size="18px" ForeColor="#006699">Repeater</asp:LinkButton>
            </td>
        </tr>
    </table>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:DataList ID="DataList1" runat="server" CellPadding="3" DataKeyField="numIng" DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="style" GridLines="Both">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    Numero:
                    <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    Nom:
                    <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                    <br />
                    Prix Unitaire:
                    <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                    <br />
                    Unite de mesure:
                    <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="numIng" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="513px" CssClass="style2">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="numIng" HeaderText="Numero" InsertVisible="False" ReadOnly="True" SortExpression="numIng" />
                    <asp:BoundField DataField="nomIng" HeaderText="Nom" SortExpression="nomIng" />
                    <asp:BoundField DataField="puIng" HeaderText="Prix Unitaire" SortExpression="puIng" />
                    <asp:BoundField DataField="uniteMesuring" HeaderText="Unite de mesure" SortExpression="uniteMesuring" />
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
                    Numero:
                    <asp:Label ID="numIngLabel1" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    Nom:
                    <asp:TextBox ID="nomIngTextBox" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    Prix Unitaire:
                    <asp:TextBox ID="puIngTextBox" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    Unite de mesure:
                    <asp:TextBox ID="uniteMesuringTextBox" runat="server" Text='<%# Bind("uniteMesuring") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    Nom:
                    <asp:TextBox ID="nomIngTextBox" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    Prix Unitaire:
                    <asp:TextBox ID="puIngTextBox" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    Unite de mesure:
                    <asp:TextBox ID="uniteMesuringTextBox" runat="server" Text='<%# Bind("uniteMesuring") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Numero:
                    <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                    <br />
                    Nom:
                    <asp:Label ID="nomIngLabel" runat="server" Text='<%# Bind("nomIng") %>' />
                    <br />
                    Prix Unitaire:
                    <asp:Label ID="puIngLabel" runat="server" Text='<%# Bind("puIng") %>' />
                    <br />
                    Unite de mesure:
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
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="numIng" DataSourceID="SqlDataSource2" OnRowDataBound="GridView1_RowDataBound" CssClass="style">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                                         <asp:CommandField  ButtonType="Image" EditImageUrl="~/ImagesForStyle/pencil.png"
 ShowEditButton="True"  ShowDeleteButton="True" DeleteImageUrl="ImagesForStyle/trash.png" />
   
                    <asp:BoundField DataField="numIng" HeaderText="Numero" InsertVisible="False" ReadOnly="True" SortExpression="numIng" />
                    <asp:BoundField DataField="nomIng" HeaderText="Nom" SortExpression="nomIng" />
                    <asp:BoundField DataField="puIng" HeaderText="Prix Unitaire" SortExpression="puIng" />
                    <asp:BoundField DataField="uniteMesuring" HeaderText="Unite de mesure" SortExpression="uniteMesuring" />
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
        </asp:View>
        <asp:View ID="View5" runat="server">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="numIng" DataSourceID="SqlDataSource2">
                <AlternatingItemTemplate>
                    <li style="color:white">Numero:
                        <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                        <br />
                        Nom:
                        <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                        <br />
                        Prix Unitaire:
                        <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                        <br />
                        Unite de mesure:
                        <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                        <br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="">numIng:
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
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">nomIng:
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
                    </li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="color:white">Numero:
                        <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                        <br />
                        Nom:
                        <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                        <br />
                        Prix Unitaire:
                        <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                        <br />
                        Unite de mesure:
                        <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                        <br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server" style="">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="">Numero:
                        <asp:Label ID="numIngLabel" runat="server" Text='<%# Eval("numIng") %>' />
                        <br />
                        Nom:
                        <asp:Label ID="nomIngLabel" runat="server" Text='<%# Eval("nomIng") %>' />
                        <br />
                        Prix Unitaire:
                        <asp:Label ID="puIngLabel" runat="server" Text='<%# Eval("puIng") %>' />
                        <br />
                        Unite de mesure:
                        <asp:Label ID="uniteMesuringLabel" runat="server" Text='<%# Eval("uniteMesuring") %>' />
                        <br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
        </asp:View>
        <asp:View ID="View6" runat="server">
            <br />
            <br />

            <p style="color:white">On a une liste d'ingredients qu'on va presenter ici :</p>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <img src="ImagesForStyle/cook.png" style="width:40px;height:45px" class="style2" />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("nomIng") %>'  CssClass="style2" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# "Cet ingredient coute "+ Eval("puIng") +" pour chaque " + Eval("uniteMesuring")%>'   CssClass="style2" ForeColor="White"></asp:Label>
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
    
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:recettesdbConnectionString %>" SelectCommand="SELECT * FROM [ingredient]"></asp:SqlDataSource>
    
    </asp:Content>
