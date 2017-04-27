<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="verStock.aspx.cs" Inherits="WebPortafolio.verStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="example">
<div>
<h4 id="hh" >STOCK POR MEDICAMENTO<h4>
</div>

<label>
<select>
<option selected> Seleccione </option>
<option>Paracetamol</option>
<option>Paracetamolee</option>
</select>
</label>

<table style="width:40%">
<tr>
<th>NOMBRE</th>
<th>TOTAL</th> 
</tr>
<tr>
<td>PARACETAMOL</td>
<td>200</td> 
</tr>
</table>
</div>
</asp:Content>
