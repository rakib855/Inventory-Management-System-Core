<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Brand.aspx.cs" Inherits="InventoryManagementProject.Brand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert" DataSourceID="ObjectDataSource1" Width="391px" OnPageIndexChanging="FormView1_PageIndexChanging">
        <InsertItemTemplate>
                    <div class="container">  
        <fieldset>
            <br/>
            <div class="form-group">
                <label class="col-md-4"></label>
                    <label class="col-md-2">Brand Name</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Brand Name" CssClass="form-control" Text ='<%#Bind("Brand_Name")%>'></asp:TextBox>
                        </div>
                </div>

            <br />
                 <div class="form-group">
                    <label class="col-md-6"></label>
                        <div class="col-md-6">
                            <asp:Button ID="Button1"  CommandName="Insert" runat="server" Text="Save" CssClass="btn btn-success"  Width="95px" />
                            <asp:Label ID="lbl" runat="server" ForeColor="#00CC00"></asp:Label>
                        </div>
                </div>
        </fieldset>
    </div>
        </InsertItemTemplate>
    </asp:FormView>


        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="469px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DataObjectTypeName="InventoryManagementProject.Class" InsertMethod="AddBrandName" SelectMethod="GetBrandName" TypeName="InventoryManagementProject.ClassDAL"></asp:ObjectDataSource>
    <br />
</asp:Content>
