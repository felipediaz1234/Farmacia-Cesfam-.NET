<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="fornUser.aspx.cs" Inherits="WebPortafolio.fornUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="example">
    <form class="form-style-9" runat="server">
    <ul>
    <li>
   <asp:Label ID="Label1" runat="server" Text="CODIGO:"></asp:Label><asp:TextBox ID="txtcod" runat="server" class="field-style field-split align-right" ></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label2" runat="server" Text="USER:"></asp:Label><asp:TextBox ID="txtUser" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label3" runat="server" Text="PASSWORD:"></asp:Label><asp:TextBox ID="txtpass" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label4" runat="server" Text="TIPO:"></asp:Label><asp:TextBox ID="txtTipo" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <center>----------------------------------------------------</center>	
    <li>
    <asp:Button ID="btnEnviar" runat="server" Text="GRABAR" type="submit"/>
    &nbsp;
    <asp:Button ID="btnBuscar" runat="server" Text="BUSCAR"  type="submit"/>
    </li>
    <center>----------------------------------------------------</center>
    <li>
    <asp:Button ID="btnActualizar" runat="server" Text="ACTUALIZAR" type="submit"/>
    &nbsp;
    <asp:Button ID="btnBorrar" runat="server" Text="BORRAR" type="submit"/>
    </li>
    </ul>
    </form>
     </div>
</asp:Content>
