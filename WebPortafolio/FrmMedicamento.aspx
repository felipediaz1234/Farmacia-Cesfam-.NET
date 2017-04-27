<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="FrmMedicamento.aspx.cs" Inherits="WebPortafolio.FrmMedicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <p>
            CODIGO MEDICAMENTO:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCod" runat="server"></asp:TextBox>
        </p>
        <p>
            NOMBRE MEDICAMENTO:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNomMedicamento" runat="server"></asp:TextBox>
        </p>
        <p>
            NOMBRE GENERICO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNomGenerico" runat="server"></asp:TextBox>
        </p>
        <p>
            FECHA_VENCIMIENTO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtFechaVenci" runat="server"></asp:TextBox>
        </p>
        <p>
            LABORATORIO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtLaboratorio" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="btnCrear" runat="server" OnClick="btnCrear_Click" Text="Grabar" />
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
    </form>
</asp:Content>
