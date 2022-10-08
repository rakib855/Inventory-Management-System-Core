<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="InventoryManagementProject.WebUserControl1" %>
<style type="text/css">

</style>

<br /><br />

        <div class="container">  
        <fieldset>
            <br/>
            <div class="form-group">
                <label class="col-md-4"></label>
                    <label class="col-md-2">Category Name</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtCategoryName" placeholder="Enter Category Name" runat="server" CssClass="form-control"></asp:TextBox> 
                        </div>
                </div>
            <br /><br />
                 <div class="form-group">
                    <label class="col-md-6"></label>
                        <div class="col-md-6">
                            <asp:Button ID="btncatSave" runat="server" Text="Save" CssClass="btn btn-success" OnClick="Button1_Click" Width="95px" />
                            <asp:Label ID="lbl" runat="server" ForeColor="#00CC00"></asp:Label>
                        </div>
                </div>
        </fieldset>
    </div>

    <fieldset>
        <div class="form-group">
                        <div class="col-md-2">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br />
                           <asp:Button ID="btnSearch" CssClass="btn btn-success"  runat="server" Text="Search" OnClick="btnSearch_Click" />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
            </div>
    </fieldset>
    <br /><br />
              <fieldset>
                 <div class="form-group">
                        <div class="col-md-2">
                            <label>     Category Name	</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                 </div>
              </fieldset><br />
    <fieldset>
                <div class="form-group">
                    <div class="col-md-1">
                           <asp:Button ID="btnCatUpdate" runat="server" Text="Update"  CssClass="btn btn-success" OnClick="btnCatUpdate_Click" />
                        </div>
                    <div class="col-md-1">
                           <asp:Button ID="btnCatDelete" runat="server" Text="Delete"  CssClass="btn btn-success" OnClick="btnCatDelete_Click"/>
                        </div>
            </div>
    </fieldset>

    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CategoryID" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="338px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False" ReadOnly="True" SortExpression="CategoryID" />
            <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" SortExpression="Category_Name" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>

<br />
          

