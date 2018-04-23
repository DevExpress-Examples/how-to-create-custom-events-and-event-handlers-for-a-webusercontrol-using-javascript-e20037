﻿<%@ Control Language="vb" AutoEventWireup="true" CodeFile="ComboUC.ascx.vb" Inherits="ComboUC" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v12.1, Version=12.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<script type="text/javascript">
	var evt = document.createEvent("Event");
	evt.initEvent("valueChanged", true, true);

	function invokeValueChanged(catID) {
		evt.catID = catID;
		document.dispatchEvent(evt);
	}
</script>
<dx:ASPxComboBox ID="cmbx1" runat="server" DataSourceID="AccessDataSource1" ClientInstanceName="cmbx1"
	TextField="CategoryName" ValueField="CategoryID">
	<ClientSideEvents SelectedIndexChanged="function(s, e) {
	invokeValueChanged(s.GetValue());
}" />
</dx:ASPxComboBox>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Northwind.mdb"
	SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
</asp:AccessDataSource>