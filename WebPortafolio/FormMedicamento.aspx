<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="FormMedicamento.aspx.cs" Inherits="WebPortafolio.FormMedicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <p>
            CODIGO MEDICAMENTO:<asp:TextBox ID="txtCod" runat="server"></asp:TextBox>
        </p>
        <p>
            NOMBRE MEDICAMENTO:<asp:TextBox ID="txtNomMedicamento" runat="server"></asp:TextBox>
        </p>
        <p>
            NOMBRE GENERICO:
            <asp:TextBox ID="txtNomGenerico" runat="server"></asp:TextBox>
        </p>
        <p>
            FECHA VENCIMIENTO:<asp:TextBox ID="txtFechaVenci" runat="server"></asp:TextBox>
        </p>
        <p>
            LABORATORIO:
            <asp:TextBox ID="txtLaboratorio" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="txtBuscar" runat="server" OnClick="txtBuscar_Click" Text="Buscar" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
    </form>
</asp:Content>
