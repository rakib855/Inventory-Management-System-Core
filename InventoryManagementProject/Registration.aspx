<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="InventoryManagementProject.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .container{
            margin-left:350px;
            margin-top:150px;
            height:360px;
            width:500px;
            border:2px solid black;
            background:#A6E4F1;
            box-shadow: 5px 5px 5px 5px black;
        }
        .form-group{
             margin-left:30px;
             margin-top:15px;
        }
        .txtlabel{
            width:75px;
            float:left;
        }
        col-md-10{
            width:70px;
            float:right;
        }
        .auto-style1 {
            height: 296px;
            D: \Rakib\ASP.NET\Project\InventoryManagementProject\InventoryManagementProject\Registration.aspx
        }
        .auto-style2 {
            width: 130px;
            float: left;
        }
        .auto-style3 {
            width: 130px;
            float: left;
        }
        .auto-style4 {
            width: 130px;
            float: left;
        }
        .auto-style5 {
            width: 130px;
            float: left;
        }
        .auto-style6 {
            width: 130px;
            float: left;
        }
        .auto-style7 {
            height: 359px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <div class="container">  
        <fieldset class="auto-style7">
            <br/>
            <div class="form-group">
                <div class="auto-style6">
                    Name</div>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtregName" runat="server" Width="139px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtregName" ErrorMessage="Name Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                </div>

                <div class="form-group">
                    <div class="auto-style5">
                        Email</div>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtEmail" runat="server" Width="139px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="ex: abc@gmail.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                         </div>
                 </div>

            <div class="form-group">
                    <div class="auto-style4">
                        Age</div>
                        <div class="col-md-10">
                        <asp:TextBox ID="txtAge" runat="server" Width="139px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAge" ErrorMessage="Age Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age Between 18 to 40" ForeColor="Red" MaximumValue="40" MinimumValue="18">*</asp:RangeValidator>
                         </div>
                 </div>

            <div class="form-group">
                    <div class="auto-style3">
                        Password</div>
                        <div class="col-md-10">
                        <asp:TextBox ID="txtregPassword" runat="server" Width="139px" type="password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtregPassword" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                         </div>
                 </div>

            <div class="form-group">
                    <div class="auto-style2">
                        Confirm Password</div>
                        <div class="col-md-10">
                        <asp:TextBox ID="txtPassword2" runat="server" Width="139px" type="password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword2" ErrorMessage="Password Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtregPassword" ControlToValidate="txtPassword2" ErrorMessage="Password Not Match" ForeColor="Red">*</asp:CompareValidator>
                         </div>
                 </div>

                 <div class="form-group">
                    <label class="col-md-2"></label>
                        <div class="col-md-10">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;<asp:Button ID="btnRegistration" runat="server" BackColor="#FFCCFF" ForeColor="#003300" OnClick="btnRegistration_Click" Text="Register" Width="111px" Height="27px" />
                    &nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">     Login         </asp:HyperLink>
&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" ForeColor="#00CC00"></asp:Label>
                                               
                        </div>
                     <div>
                         <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="263px" />
                     </div>
                </div> 
        </fieldset>
    </div>



        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">
                        &nbsp;</td>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="2" rowspan="3">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
