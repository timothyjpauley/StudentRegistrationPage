<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProjectTimPauley.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 103px;
        }
        .auto-style4 {
            margin-left: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Css/Style.css" rel="stylesheet"" type="text/css" />
    <script src="scripts/jquery-3.0.0.js"></script>
    <div class="Header">
        <h1>Login</h1>
     </div>
     <div class="Label">
     <asp:Label ID="LabelMessage" runat="server"></asp:Label>
    </div>
    <div class="Label">
        <asp:Label ID="LabelStudentLogin" runat="server" Text="Student Login:"></asp:Label>
        <asp:TextBox ID="TextBoxStudentLogin" runat="server" Height="28px" Width="870px" CssClass="auto-style3"></asp:TextBox>
        </div>

    <div class="Label">
        <asp:Label ID="LabelStudentPassword" runat="server" Text="Student Password:"></asp:Label>
          <asp:TextBox ID="TextBoxStudentPassword" runat="server" Height="28px" Width="873px" TextMode="Password" CssClass="auto-style4"></asp:TextBox>
    </div>

    <div class="button">
        <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" width="200px" BackColor="Yellow" OnClick="ButtonCancel_Click" />
    </div>
    <div class="button">
        <asp:Button ID="ButtonLogin" runat="server" Text="Login>>" width="200px" BackColor="Yellow" OnClick="ButtonLogin_Click" />
    </div>

    <div class="button">
        <asp:Button ID="ButtonLoginRequestLogin" runat="server" Text="Request New Student Login" width="200px" BackColor="Yellow" OnClick="ButtonLoginRequestLogin_Click"  />
    </div>
  
    <div class="button">
       <asp:Button ID="ButtonReturn" runat="server" Text="Return to Class List"  width="200px" BackColor="Yellow" OnClick="ButtonReturn_Click" />
     </div>
        <br />
     <br />
     <br />
     <br />
     <br />
     <br />
        <asp:Button ID="ButtonLogOut" runat="server" Text="Logout" width="200px" BackColor="Red" OnClick="ButtonLogOut_Click" />
        <div class="smallerLabel">
          <asp:ValidationSummary ID="ValidationSummary1" runat="server"  ForeColor="Black" CssClass="auto-style2" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentLogin" runat="server" ErrorMessage="Please enter Student Login" ControlToValidate="TextBoxStudentLogin"></asp:RequiredFieldValidator>
        </div>
        <div class="smallerLabel">
          <asp:RequiredFieldValidator ID="RequiredFieldValidatorStudentPassword" runat="server" ErrorMessage="Please enter Student Password" ControlToValidate="TextBoxStudentPassword"></asp:RequiredFieldValidator>
        </div>
</asp:Content>
