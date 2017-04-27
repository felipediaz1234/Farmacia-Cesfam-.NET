<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="reMedicamento.aspx.cs" Inherits="WebPortafolio.reMedicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="example">
    <div>
    <h4 id="hh1" >RESERVA MEDICAMENTO<h4>
    </div>		

    <form class="form-style-9">
    <ul>
    <li>
    <input type="date" name="field8" class="field-style field-split align-left"/>
    </li>
    <center>Datos Paciente</center>
    <li>
    <input type="text" name="field1" class="field-style field-split align-left" placeholder="NOMBRE PACIENTE" />
    <input type="email" name="field2" class="field-style field-split align-right" placeholder="APELLIDO PATERNO" />

    </li>
    <li>
    <input type="text" name="field3" class="field-style field-split align-left" placeholder="APELLIDO MATERNO" />
    <input type="text" name="field4" class="field-style field-split align-right" placeholder="TELEFONO" />
    </li>
    <li>
    <input type="text" name="field5" class="field-style field-split align-leftt" placeholder="EMAIL" />
    </li>
    <center>Datos Medicamento</center>
    <li>
    <input type="text" name="field6" class="field-style field-split align-right" placeholder="MEDICAMENTO A RESERVAR" />
    <input type="text" name="field7" class="field-style field-split align-left" placeholder="CANTIDAD RESERVADA" />
    </li>
    <center>Datos Funcionario</center>
    <li>
    <input type="text" name="field9" class="field-style field-split align-leftt" placeholder="NOMBRE FUNCIONARIO" />
    </li>
    <center>----------------------------------------------------</center>	
    <li>
    <input type="submit" value="ENVIAR RESERVA" />
    </li>
    </ul>
    </form>
    </div>
</asp:Content>
