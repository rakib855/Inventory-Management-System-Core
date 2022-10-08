<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="InventoryManagementProject.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       
         <div class="container">  
        <fieldset>
            <br/>
            <div class="form-group">
                <label class="col-md-4"></label>
                    <label class="col-md-2">Product Name</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtProduct_Name" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
                </div>
            <br /><br />
                <div class="form-group">
                    <label class="col-md-4"></label>
                    <label class="col-md-2">Category</label>
                        <div class="col-md-6">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_Name" DataValueField="CategoryID"  CssClass="form-control">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
                        </div>
                 </div>
            <br /><br />
                  <div class="form-group">
                            <label class="col-md-4"></label>
                              <label class="col-md-2">Brand</label>
                                <div class="col-md-6">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Brand_Name" DataValueField="BrandID"  CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
                        </div>
                </div>
            <br /><br />
                <div class="form-group">
                            <label class="col-md-4"></label>
                             <label class="col-md-2">Shop Name</label>
                              <div class="col-md-6">
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Shop_Name" DataValueField="ShopID"  CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT * FROM [Shop]"></asp:SqlDataSource>
                        </div>
                 </div>
            <br /><br />
                <div class="form-group">
                            <label class="col-md-4"></label>
                             <label class="col-md-2">Condition</label>
                              <div class="col-md-6">
                                <asp:RadioButton ID="RadioNew" runat="server" GroupName="Condition" Text="New" />
                                <asp:RadioButton ID="RadioUsed" runat="server" GroupName="Condition" Text="Used" />
                        </div>
                 </div>
            <br /><br />
                 <div class="form-group">
                            <label class="col-md-4"></label>
                             <label class="col-md-2">Quantity</label>
                              <div class="col-md-6">
                                <asp:TextBox ID="txtQuantity" runat="server"  CssClass="form-control" ></asp:TextBox>
                        </div>
                 </div>
            <br /><br />
                  <div class="form-group">
                            <label class="col-md-4"></label>
                             <label class="col-md-2">Price</label>
                              <div class="col-md-6">
                                <asp:TextBox ID="txtPrice" runat="server"  CssClass="form-control"></asp:TextBox>
                        </div>
                 </div>
            <br /><br />
                  <div class="form-group">
                            <label class="col-md-4"></label>
                             <label class="col-md-2">Selling Date</label>
                              <div class="col-md-6">
                <asp:TextBox ID="txtSellingDate" runat="server" type="date"  CssClass="form-control"></asp:TextBox>
                        </div>
                 </div>
            <br /><br />
                  <div class="form-group">
                            <label class="col-md-4"></label>
                             <label class="col-md-2">Photo</label>
                              <div class="col-md-6">
                              <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="form-control"/>
                        </div>
                 </div>

            <br /><br />
                 <div class="form-group">
                    <label class="col-md-6"></label>
                        <div class="col-md-6">
                            <asp:Button ID="btnProductSave" runat="server" Text="Save" OnClick="Button1_Click" CssClass="btn btn-success" Width="95px" />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                </div>
        </fieldset>
    </div>


       <br />
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ProductHYP.aspx">Click To View Details</asp:HyperLink>
      <br />

      </asp:Content>
