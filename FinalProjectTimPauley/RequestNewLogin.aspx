<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="RequestNewLogin.aspx.cs" Inherits="FinalProjectTimPauley.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="Css/Style.css" rel="stylesheet"" type="text/css" />
    <div class="LoginBox">
        <div class="Label">
            <asp:Label ID="LabelName" runat="server" Text="Name"></asp:Label>
        </div>
        <div class="Textbox">
            <asp:TextBox ID="TextBoxName" runat="server" Height="28px" Width="854px"></asp:TextBox>
        </div>

        <div class="Label">
            <asp:Label ID="LabelEmailAddress" runat="server" Text="Email Address"></asp:Label>
        </div>
        <div class="Textbox">
            <asp:TextBox ID="TextBoxEmailAddress" runat="server" Height="28px" Width="854px"></asp:TextBox>
        </div>
        <div class="Label">
            <asp:Label ID="LabelLoginName" runat="server" Text="Login Name"></asp:Label>
        </div>
        <div class="Textbox">
            <asp:TextBox ID="TextBoxLoginName" runat="server" Height="28px" Width="854px"></asp:TextBox>
        </div>
        <div class="Label">
            <asp:Label ID="LabelNewOrReactivate" runat="server" Text="New Or Reactivate"></asp:Label>
        </div>
        <div class="Textbox">
            <asp:TextBox ID="TextBoxNewOrReactivate" runat="server" Height="28px" Width="854px"></asp:TextBox>
        </div>
        <div class="Label">
            <asp:Label ID="LabelReason" runat="server" Text="Reason for access"></asp:Label>
        </div>
        <div class="Textbox">
            <asp:TextBox ID="TextBoxReason" runat="server" Height="28px" Width="854px"></asp:TextBox>
            </div>
     <div class="Label">
            <asp:Label ID="LabelDateNeededBy" runat="server" Text="Date Needed By"></asp:Label>
         </div>
        <div class="Textbox">
            <asp:TextBox ID="TextBoxDateNeededBy" runat="server" Height="28px" Width="854px"></asp:TextBox>    
        </div>
           <br />
        <br />
           <div class="button">
            <asp:Button ID="ButtonRequestLogin" runat="server" Text="Submit" width="245px" BackColor="Yellow" OnClick="ButtonRequestLogin_Click" />
        </div>
          <div class="smallerLabel">
                 <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                 <asp:Label ID="LabelInfo" runat="server" Text="A Password will be sent to you once a staff member has manually gone over your request"></asp:Label>
        </div>
</asp:Content>
