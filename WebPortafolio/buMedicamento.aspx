<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="buMedicamento.aspx.cs" Inherits="WebPortafolio.buMedicamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="example">
<div>
<h4 id="hh" >BUSCAR MEDICAMENTO<h4>
</div>

<label>
<select>
<option selected> Seleccione </option>
<option>PASTILLA</option>
<option>Paracetamol</option>
<option>Paracetamolee</option>
</select>
</label>

<table style="width:40%">
<tr>
<th>CODIGO</th>
<th>NOMBRE MEDICAMENTO</th> 
<th>NOMBRE GENERICO</th>
<th>FECHA VENCIMIENTO</th>	
<th>LABORATORIO</th>
</tr>
<tr>
<td>1</td>
<td>PARACETAMOL</td> 
<td>PARA</td>
<td>10-03-2017</td>
<td>POLVO</td>
</tr>
<tr>
<td>2</td>
<td>JAL</td> 
<td>LA</td>
<td>12-03-2017</td>
<td>POL</td>
	
</tr>
<tr>
<td>3</td>
<td>LAJA</td> 
<td>LALA1</td>
<td>17-03-2017</td>
<td>PO</td>	
</tr>
</table>
</div>
    </div>
    </form>
</asp:Content>
