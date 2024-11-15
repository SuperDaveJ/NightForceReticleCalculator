﻿<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="Options.aspx.cs" Inherits="Nightforce.Administration.Options" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register Src="~/Controls/ValidationSummary.ascx" TagName="ValidationSummary" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainStandardFormContent" runat="server">
    <telerik:RadAjaxLoadingPanel ID="PageLoadingPanel" runat="server">
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxManagerProxy ID="AjaxManagerProxy1" runat="server">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="UpdateButton">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="PageValidation" />
                    <telerik:AjaxUpdatedControl ControlID="UpdateButton" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManagerProxy> 
    <div class="StandardFormDiv" id="PageDiv">
        <br />
        <uc1:ValidationSummary ID="PageValidation" runat="server" />
        <asp:Literal ID="RequiredFieldMessage" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:label ID="UseAmmunitionG7Label" runat="server" AssociatedControlID="UseAmmunitionG7Combo"></asp:label>
        <br />
        <telerik:RadComboBox ID="UseAmmunitionG7Combo" runat="server">
            <Items>
                <telerik:RadComboBoxItem runat="server" Text="Yes" ToolTip="Yes" Value="True" />
                <telerik:RadComboBoxItem runat="server" Text="No" ToolTip="No" Value="False" />
            </Items>
        </telerik:RadComboBox>
        <br />
        <br />
        <telerik:RadButton ID="UpdateButton" runat="server" OnClick="UpdateButton_Click"></telerik:RadButton>
        &nbsp;&nbsp;
        <telerik:RadButton ID="CancelButton" runat="server" OnClick="CancelButton_Click"></telerik:RadButton>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
