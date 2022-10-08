<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="InventoryManagementProject.Manager" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
                <div class="form-group">
                        <div class="col-md-2">
                        </div><br />
                    <div class="col-md-2">
                        </div>
            </div>
    </fieldset>

        <div class="container">  
        <fieldset>
            <br/>
            <div class="form-group">
                <label class="col-md-4"></label>
                    <label class="col-md-2">Manager Name</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtManagerName" placeholder="Enter Manager Name" runat="server" CssClass="form-control"></asp:TextBox> 
                        </div>
                </div>
            <br /><br />
                <div class="form-group">
                    <label class="col-md-4"></label>
                    <label class="col-md-2">Gender</label>
                        <div class="col-md-6">
                            <asp:RadioButton ID="RadioMale" runat="server" GroupName="Gender" Text="Male" />
                            <asp:RadioButton ID="RadioFemale" runat="server" GroupName="Gender" Text="Female" />
                        </div>
                 </div>
            <br /><br />
                        <div class="form-group">
                            <label class="col-md-4"></label>
                    <label class="col-md-2">Address</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtAddress" placeholder="Enter Address" runat="server" CssClass="form-control"></asp:TextBox> 
                        </div>
                </div>
            <br /><br />
                <div class="form-group">
                    <label class="col-md-4"></label>
                    <label class="col-md-2">Joining Date</label>
                        <div class="col-md-6">
                            <asp:TextBox ID="txtJoiningDate"  type="date" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                 </div>
            <br /><br />
                 <div class="form-group">
                    <label class="col-md-6"></label>
                        <div class="col-md-6">
                            <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-success" OnClick="Button1_Click" Width="95px" />
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
                            <label>     Manager Name	</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                     <div class="col-md-2">
                            <label>     Gender	</label>
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>=
                     <div class="col-md-2">
                            <label>     Address	</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                     <div class="col-md-2">
                            <label>     Joining Date	</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                 </div>
              </fieldset>
    <fieldset>
                <div class="form-group">
                        <div class="col-md-2">
                        </div>
                    <div class="col-md-2">
                           <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-success" />
                        </div>
                    <div class="col-md-2">
                           <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="btn btn-success"/>
                        </div>
            </div>
    </fieldset>

    <br />

<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ManagerID" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="751px">
    <AlternatingRowStyle BackColor="#DCDCDC" />
    <Columns>
        <asp:BoundField DataField="ManagerID" HeaderText="ManagerID" InsertVisible="False" ReadOnly="True" SortExpression="ManagerID" />
        <asp:BoundField DataField="Manager_Name" HeaderText="Manager_Name" SortExpression="Manager_Name" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="Joining_Date" HeaderText="Joining_Date" SortExpression="Joining_Date" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InventoryManagementSystemConnectionString3 %>" SelectCommand="SELECT * FROM [Manager]"></asp:SqlDataSource>

</asp:Content>
