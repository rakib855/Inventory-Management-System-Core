<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="InventoryManagementProject.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .container{
            margin-left:350px;
            margin-top:150px;
            height:300px;
            width:500px;
            border:2px solid black;
            background:#A6E4F1;
            box-shadow: 5px 5px 5px 5px black;
        }
        .form-group{
             margin-left:30px;
             margin-top:30px;
        }
        .txtlabel{
            width:65px;
            float:left;
        }
        col-md-10{
            width:100px;
            float:right;
             margin-left:-180px;
        }
        .auto-style1 {
            height: 296px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">  
        <fieldset class="auto-style1">
            <br/>
            <div class="form-group">
                <div class="txtlabel">
                    <label class="col-md-2">Email</label>
                </div>
                        <div class="col-md-10">
                           <asp:TextBox ID="txtName" runat="server" Width="139px"></asp:TextBox>
                            &nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="Email Required" ForeColor="Red">Email Required</asp:RequiredFieldValidator>
                        </div>
                </div>

                <div class="form-group">
                    <div class="txtlabel">
                    <label class="col-md-2">Password</label>
                </div>
                        <div class="col-md-10">
                            <asp:TextBox ID="txtPassword" runat="server" Width="139px" TextMode="Password"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required" ForeColor="Red">Password Required</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="ex: abc@gmail.com" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">ex: abc@gmail.com</asp:RegularExpressionValidator>
                         </div>
                 </div>

                 <div class="form-group">
                    <label class="col-md-2"></label>
                        <div class="col-md-10">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnLogin" runat="server"  Text="Login"  OnClick="btnLogin_Click" Width="113px"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" ForeColor="Black">Register Now</asp:HyperLink>
                            &nbsp;
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                   
                        </div>
                </div> 
        </fieldset>
    </div>
   </form>
</body>
</html>