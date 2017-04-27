<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebPortafolio.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOG IN</title>
	<link rel="stylesheet" href="css/est.css">
	 <link type="image/png" href="images/favi.png" rel="shortcut icon">  
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>FARMACIA CESFAM</h1>
    </div>
    <div>
    <div class="login-form">
    <h1>LOGIN</h1>
    <div class="form-group ">
    <asp:TextBox ID="txtUserName" runat="server" class="form-control" placeholder="USUARIO "></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="REQUIERE USUARIO" ControlToValidate="txtUserName" ForeColor="Red" ValidationGroup="1">**</asp:RequiredFieldValidator>
    <i class="fa fa-user"></i>
    </div>
    <div class="form-group log-status">
     <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="PASSWORD" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="REQUIERE CONTRASEÑA" ControlToValidate="txtPassword" ForeColor="Red" ValidationGroup="1">**</asp:RequiredFieldValidator>
    <i class="fa fa-lock"></i>
    </div>
    <br>
    <asp:Button ID="btnLogIng" runat="server" class="log-btn" Text="LOG IN" ValidationGroup="1" OnClick="btnLogIng_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
    <script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" ForeColor="Red" />
    </div>
    </div>
    </form>
</body>
</html>
