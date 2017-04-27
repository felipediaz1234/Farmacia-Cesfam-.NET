<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="fornFuncionario.aspx.cs" Inherits="WebPortafolio.fornFuncionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="example">
    <form class="form-style-9" runat="server">
    <ul>
    <li>
   <asp:Label ID="Label1" runat="server" Text="CODIGO:"></asp:Label><asp:TextBox ID="txtCodigo" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label2" runat="server" Text="NOMBRE:"></asp:Label><asp:TextBox ID="txtnombre" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label3" runat="server" Text="APELLIDO PATERNO:"></asp:Label><asp:TextBox ID="txtPaterno" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label4" runat="server" Text="APELLIDO MATERNO:"></asp:Label><asp:TextBox ID="txtMaterno" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label5" runat="server" Text="DIRECCION:"></asp:Label><asp:TextBox ID="txtdireccion" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label6" runat="server" Text="TELEFONO:"></asp:Label><asp:TextBox ID="txtTelefono" runat="server" class="field-style field-split align-right"></asp:TextBox>
    </li>
    <center>----------------------------------------------------</center>	
    <li>
    <asp:Button ID="btnSearch" runat="server" Text="BUSCAR" type="submit" OnClick="btnSearch_Click"/>
    &nbsp;
    <asp:Button ID="btnCrear" runat="server" Text="CREAR" type="submit" OnClick="btnCrear_Click"/>
    </li>
    <center>----------------------------------------------------</center>
    <li>
    <asp:Button ID="btnUpdate" runat="server" Text="ACTUALIZAR" type="submit"/>
    &nbsp;
    <asp:Button ID="btnEliminar" runat="server" Text="ELIMINAR" type="submit"/>
    </li>
        <center><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></center>
    </ul>
    </form>
     </div>
</asp:Content>
