<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="InventoryManagementProject.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

            <div class="container">  
        <fieldset>
            <br/>
            <div class="form-group">
                <label class="col-md-4"></label>
                    <label class="col-md-2">Shop Name</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtShopName" placeholder="Enter Shop Name" runat="server" CssClass="form-control"></asp:TextBox> 
                        </div>
                </div>
            <br /><br />
                <div class="form-group">
                    <label class="col-md-4"></label>
                    <label class="col-md-2">Manager ID</label>
                        <div class="col-md-6">
                             <asp:DropDownList ID="DropDownManagerName" runat="server"  CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Manager_Name" DataValueField="ManagerID" Height="30px" Width="280px"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT * FROM [Manager]"></asp:SqlDataSource>

                        </div>
                 </div>
            <br /><br />
                  <div class="form-group">
                            <label class="col-md-4"></label>
                              <label class="col-md-2">Shop Address</label>
                                <div class="col-md-6">
                            <asp:TextBox ID="txtShopAddress" placeholder="Enter Shop Address" runat="server" CssClass="form-control"></asp:TextBox> 
                        </div>
                </div>
            <br /><br />
                <div class="form-group">
                            <label class="col-md-4"></label>
                             <label class="col-md-2">Opening Date</label>
                              <div class="col-md-6">
                            <asp:TextBox ID="txtOpeningDate"  type="date" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                 </div>
            <br /><br />
                 <div class="form-group">
                    <label class="col-md-6"></label>
                        <div class="col-md-6">
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="btnSave_Click" Width="95px" />
                            <asp:Label ID="lbl" runat="server" ForeColor="#00CC00"></asp:Label>
                        </div>
                </div>
        </fieldset>
    </div>

     <fieldset>
        <div class="form-group">
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                           <asp:Button ID="btnSearch" CssClass="btn btn-success"  runat="server" OnClick="btnSearch_Click" Text="Search" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
            </div>
    </fieldset>

              <fieldset>
                 <div class="form-group">
                        <div class="col-md-2">
                            <label>         Shop Name		</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                     <div class="col-md-2">
                            <label>      Manager ID	</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>=
                     <div class="col-md-2">
                            <label>     Shop Address	</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                     <div class="col-md-2">
                            <label>     Opening  Date	</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                 </div>
              </fieldset>
    <fieldset>
                <div class="form-group">
                        <div class="col-md-2">
                        </div>
                    <div class="col-md-2">
                           <asp:Button ID="btnSUpdate" runat="server" Text="Update" OnClick="btnSUpdate_Click" CssClass="btn btn-success" />
                        </div>
                    <div class="col-md-2">
                           <asp:Button ID="btnSDelete" runat="server" Text="Delete" OnClick="btnSDelete_Click" CssClass="btn btn-success"/>
                        </div>
            </div>
    </fieldset>

    <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ShopID" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="729px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="ShopID" HeaderText="ShopID" InsertVisible="False" ReadOnly="True" SortExpression="ShopID" />
                    <asp:BoundField DataField="Shop_Name" HeaderText="Shop_Name" SortExpression="Shop_Name" />
                    <asp:BoundField DataField="Manager_Name" HeaderText="Manager_Name" SortExpression="Manager_Name" />
                    <asp:BoundField DataField="ShopAddress" HeaderText="ShopAddress" SortExpression="ShopAddress" />
                    <asp:BoundField DataField="Opening_Date" HeaderText="Opening_Date" SortExpression="Opening_Date" />
                </Columns>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT Shop.ShopID, Shop.Shop_Name, Manager.Manager_Name, Shop.ShopAddress, Shop.Opening_Date FROM Shop INNER JOIN Manager ON Shop.ManagerID = Manager.ManagerID"></asp:SqlDataSource>
    <br />

</asp:Content>
