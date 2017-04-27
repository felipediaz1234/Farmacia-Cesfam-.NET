<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="medicamento.aspx.cs" Inherits="WebPortafolio.medicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="example">
    <div>
    <h4 id="hh1" >MEDICAMENTO<h4>
    </div>		
    <form class="form-style-9" runat="server">
    <ul>
    <li>
    <asp:Label ID="Label1" runat="server" Text="NOMBRE MEDICAMENTO:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtNOmedicamento" runat="server" class="field-style field-split align-right" placeholder="NOMBRE MEDICAMENTO"></asp:TextBox>
    &nbsp;</li>
    <li>
    <asp:Label ID="Label2" runat="server" Text="NOMBRE GENERICO:"></asp:Label><asp:TextBox ID="txtNOgenerico" runat="server" name="field2" class="field-style field-split align-right" placeholder="NOMBRE GENERICO"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label3" runat="server" Text="FECHA V:"></asp:Label>
<asp:TextBox ID="TxtFecha" runat="server" class="field-style field-split align-right"  placeholder="FECHA VENCIMIENTO"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label4" runat="server" Text="LABORATORIO:"></asp:Label><asp:TextBox ID="txtLaboratorio" runat="server" name="field4" class="field-style field-split align-right" placeholder="LABORATIO"></asp:TextBox>
    </li>
    <li>
    <asp:Label ID="Label5" runat="server" Text="IN-MEDICAMENTO:"></asp:Label><asp:TextBox ID="TextBox2" runat="server" name="field5" class="field-style field-split align-right" placeholder="IN-MEDICAMENTO"></asp:TextBox>
    </li>
    <center>----------------------------------------------------</center>	
    <li>
    <li>
    <asp:Button ID="btngrabar" runat="server" Text="GRABAR" type="submit"/>
    &nbsp;
    <asp:Button ID="btnleer" runat="server" Text="LEER" type="submit"/>
    </li>
    </li>
    </ul>
    </form>
    </div>
</asp:Content>
