<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductHYP.aspx.cs" Inherits="InventoryManagementProject.ProductHYP" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <table class="auto-style13">
        <tr>
            <td class="auto-style12">

<br /><br />
                <table class="auto-style17">
                    <tr>
                        <td class="auto-style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;
                              </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <br />
    <table class="nav-justified" style="width: 89%">
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td class="modal-sm" style="width: 560px">&nbsp;</td>
            <td rowspan="12" style="width: 512px">
                            <asp:Image ID="Image1" runat="server" CssClass="auto-style19" Height="284px" Width="257px" />
                        </td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td class="modal-sm" rowspan="12" style="width: 560px">
                <table class="nav-justified">
                    <tr>
                        <td style="width: 109px">Product ID</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="48px"></asp:TextBox>
                &nbsp;
                            <asp:Button ID="btnSearch" runat="server" Text="Search" Width="90px" BackColor="Lime" OnClick="btnSearch_Click" />
                            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Product&nbsp; Name</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Category ID</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Brand ID</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Shop ID</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Condition</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Quantity</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Price</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">Selling Date</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Height="20px" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 109px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 109px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 109px">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="76px" OnClick="btnUpdate_Click" BackColor="Yellow" />
              &nbsp;&nbsp;
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="89px" BackColor="Red" ForeColor="White" OnClick="btnDelete_Click" />
                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 101px; height: 20px"></td>
            <td style="height: 20px; width: 131px"></td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px; height: 23px"></td>
            <td style="height: 23px; width: 131px"></td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td style="width: 512px">
                              <asp:FileUpload ID="FileUpload2" runat="server" BackColor="#99CCFF" Height="28px" Width="256px" />
                        </td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td class="modal-sm" style="width: 560px">&nbsp;</td>
            <td style="width: 512px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 101px">&nbsp;</td>
            <td style="width: 131px">&nbsp;</td>
            <td class="modal-sm" style="width: 560px">&nbsp;</td>
            <td style="width: 512px">&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" Width="867px">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" SortExpression="Product_Name" />
            <asp:BoundField DataField="Category_Name" HeaderText="Category_Name" SortExpression="Category_Name" />
            <asp:BoundField DataField="Brand_Name" HeaderText="Brand_Name" SortExpression="Brand_Name" />
            <asp:BoundField DataField="Shop_Name" HeaderText="Shop_Name" SortExpression="Shop_Name" />
            <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Selling_Date" HeaderText="Selling_Date" SortExpression="Selling_Date" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photo">
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT Product.ProductID, Product.Product_Name, Category.Category_Name, Brand.Brand_Name, Shop.Shop_Name, Product.Condition, Product.Quantity, Product.Price, Product.Selling_Date, Product.Photo FROM Product INNER JOIN Category ON Product.CategoryID = Category.CategoryID INNER JOIN Brand ON Product.BrandID = Brand.BrandID INNER JOIN Shop ON Product.ShopID = Shop.ShopID"></asp:SqlDataSource>
                            <br />
                            <asp:Button ID="btnCReport" runat="server" OnClick="btnCReport_Click" Text="View Report" Width="110px" BackColor="#FFFFCC" />
    <br />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    <br />


</asp:Content>
