﻿<%@ Page Language="C#" MasterPageFile="~/Main/MainStandardForm.Master" AutoEventWireup="true" CodeBehind="SessionTimeout.aspx.cs" Inherits="Nightforce.Web.SessionTimeout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ToolBarContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainStandardFormContent" runat="server">
    <div class="StandardFormDiv">
        <br />
        <asp:Literal ID="SessionTimeoutMessage" runat="server"></asp:Literal>
    </div>
</asp:Content>
