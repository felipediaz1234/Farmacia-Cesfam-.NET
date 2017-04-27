<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="ingReceta.aspx.cs" Inherits="WebPortafolio.ingReceta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="example">
    <form class="form-style-9">
	<ul>
	<li>
	<input type="date" name="field8" class="field-style field-split align-left"/>
	</li>
	<center>RECETA MEDICA</center>
	<li>
	<input type="text" name="field1" class="field-style field-split align-left" placeholder="NOMBRE PACIENTE" />
	<input type="email" name="field2" class="field-style field-split align-right" placeholder="APELLIDO PATERNO" />

	</li>
	<li>
	<input type="text" name="field3" class="field-style field-split align-left" placeholder="APELLIDO MATERNO" />
	<input type="text" name="field4" class="field-style field-split align-right" placeholder="EDAD" />
	</li>
	<li>
	<input type="text" name="field5" class="field-style field-split align-left" placeholder="DIRECCION" />
	<input type="text" name="field5" class="field-style field-split align-right" placeholder="SECTOR" />		
	</li>
	<center>----------------------------------------------------</center>
	<li>
	<input type="text" name="field6" class="field-style field-split align-left" placeholder="NOMBRE MEDICO" />
	<input type="text" name="field5" class="field-style field-split align-right" placeholder="CANTIDAD PASTILLA" />
	</li>
	<center>----------------------------------------------------</center>
	<li>
    <textarea name="field5" class="field-style" placeholder="DESCRIPCION RECETA"></textarea>
	</li>
	<li>
	<input type="submit" value="ENVIAR RESERVA" />
	</li>
	</ul>
	</form>
    </div>

</asp:Content>
