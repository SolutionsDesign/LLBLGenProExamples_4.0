﻿
<%@ Control Language="C#" AutoEventWireup="true" Inherits="Controls_SearchTerritory" Codebehind="SearchTerritory.ascx.cs" %>
<asp:PlaceHolder id="phSingleInstance" runat="server" visible="true">
<table cellpadding="3" border="0" cellspacing="1" class="formtexts">
	<tr>
		<td colspan="4" class="content">
			<hr align="left" size="1">
			<b>Fill in the primary key field(s)</b><br><br>
		</td>
	</tr>
	<tr>
		<td width="20"  nowrap="nowrap" class="content">&nbsp;</td>
		<td class="formtexts" >
			TerritoryId:
		</td>
		<td class="content">
			<asp:textbox id="tbxTerritoryId" runat="server" maxlength="20" size="20" Text="" ValidationGroup="PkSearchValidation"  CssClass="required"/>   <asp:RequiredFieldValidator ValidationGroup="PkSearchValidation" ID="reqTerritoryId" runat="server" ControlToValidate="tbxTerritoryId" Display="Dynamic" ErrorMessage="Required" />
		</td>
		<td width="20" nowrap="nowrap" class="content">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="2" nowrap="nowrap" class="content">&nbsp;</td>
		<td class="content">
			<br>
			<asp:Button ID="btnSearchPk" runat="server" CausesValidation="True" ValidationGroup="PkSearchValidation" Text="Search..." SkinId="ButtonSkin" OnClick="btnSearchPk_Click"/>
			&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btnCancelSearchPK" runat="server" Text="Cancel" SkinId="ButtonSkin" OnClick="btnCancel_Click" CausesValidation="false"/>
			<br><br>
		</td>
		<td width="20" nowrap class="content">&nbsp;</td>
	</tr>

</table>
</asp:PlaceHolder>
<asp:PlaceHolder id="phMultiInstance" runat="server" visible="true">
<table cellpadding="2" border="0" cellspacing="0" class="formtexts">
	<tr>
		<td colspan="5" class="content">
			<b>Fill in one or more fields to find a subset.</b><br>
			To enable a filter on a field, check the checkbox in front of the field. Only if you use a Between operator, you have to fill in the second value textbox(es).
			If you use the Null operator, you can leave both textbox(es) empty. If you use the Like operator, you should use the '%' character as wildcard character.
			<br><br>
		</td>
	</tr>
	<tr>
		<td width="20" class="content tableborder" style="border-left:none;">&nbsp;</td>
		<td class="content tableborder"><b>Fieldname</b></td>
		<td class="content tableborder"><b>Not</b></td>
		<td class="content tableborder"><b>Operator</b></td>
		<td class="content tableborder"><b>Values</b></td>
	</tr>
	<tr>
		<td width="20" class="content tableborder" style="border-left:none;"><asp:CheckBox ID="chkEnableTerritoryId" runat="server" /></td>
		<td class="formtexts tableborder">
			TerritoryId:
		</td>
		<td class="content tableborder">
			<asp:CheckBox ID="chkNotTerritoryId" runat="server" />
		</td>
		<td class="content tableborder">
			<asp:DropDownList ID="opTerritoryId" runat="server">
				<asp:ListItem Value="0" Text="Equal"/>
				<asp:ListItem Value="7" Text="Like"/>
			</asp:DropDownList>
		</td>
		<td class="content tableborder" nowrap="nowrap">
			<asp:textbox id="tbxTerritoryIdMiFrom" runat="server" maxlength="20" size="20" Text="" ValidationGroup="SubSetSearchValidation" /> 

		</td>
	</tr>
	<tr>
		<td width="20" class="content tableborder" style="border-left:none;"><asp:CheckBox ID="chkEnableTerritoryDescription" runat="server" /></td>
		<td class="formtexts tableborder">
			TerritoryDescription:
		</td>
		<td class="content tableborder">
			<asp:CheckBox ID="chkNotTerritoryDescription" runat="server" />
		</td>
		<td class="content tableborder">
			<asp:DropDownList ID="opTerritoryDescription" runat="server">
				<asp:ListItem Value="0" Text="Equal"/>
				<asp:ListItem Value="7" Text="Like"/>
			</asp:DropDownList>
		</td>
		<td class="content tableborder" nowrap="nowrap">
			<asp:textbox id="tbxTerritoryDescriptionMiFrom" runat="server" maxlength="50" size="25" Text="" ValidationGroup="SubSetSearchValidation" /> 

		</td>
	</tr>
	<tr>
		<td width="20" class="content tableborder" style="border-left:none;"><asp:CheckBox ID="chkEnableRegionId" runat="server" /></td>
		<td class="formtexts tableborder">
			RegionId:
		</td>
		<td class="content tableborder">
			<asp:CheckBox ID="chkNotRegionId" runat="server" />
		</td>
		<td class="content tableborder">
			<asp:DropDownList ID="opRegionId" runat="server">
				<asp:ListItem Value="0" Text="Equal"/>
				<asp:ListItem Value="1" Text="Greater"/>
				<asp:ListItem Value="2" Text="Greater / Equal"/>
				<asp:ListItem Value="3" Text="Lesser"/>
				<asp:ListItem Value="4" Text="Lesser / Equal"/>
				<asp:ListItem Value="5" Text="Between"/>
			</asp:DropDownList>
		</td>
		<td class="content tableborder" nowrap="nowrap">
			<asp:textbox id="tbxRegionIdMiFrom" runat="server" maxlength="11" size="11" Text="" ValidationGroup="SubSetSearchValidation" /> <asp:RangeValidator ID="valMiRegionIdMiFrom" runat="server" ControlToValidate="tbxRegionIdMiFrom" ValidationGroup="SubSetSearchValidation" Display="dynamic" ErrorMessage="Invalid value" MinimumValue="-2147483648" MaximumValue="2147483647" Type="integer"/>
			and
			<asp:textbox id="tbxRegionIdMiTo" runat="server" maxlength="11" size="11" Text="" ValidationGroup="SubSetSearchValidation" /> <asp:RangeValidator ID="valMiRegionIdMiTo" runat="server" ControlToValidate="tbxRegionIdMiTo" ValidationGroup="SubSetSearchValidation" Display="dynamic" ErrorMessage="Invalid value" MinimumValue="-2147483648" MaximumValue="2147483647" Type="integer"/>

		</td>
	</tr>

	<tr>
		<td colspan="2" nowrap="nowrap" class="content">&nbsp;</td>
		<td colspan="3" class="content">
			<br>
			<asp:Button ID="btnSearchSubSet" runat="server" CausesValidation="True" ValidationGroup="SubSetSearchValidation" Text="Search..." SkinId="ButtonSkin" OnClick="btnSearchSubSet_Click"/>
			&nbsp;&nbsp;&nbsp;
			<asp:Button ID="btnCancelSearchSubSet" runat="server" Text="Cancel" SkinId="ButtonSkin" OnClick="btnCancel_Click" CausesValidation="false"/>
			<br><br>
		</td>
	</tr>
</table>
</asp:PlaceHolder>
