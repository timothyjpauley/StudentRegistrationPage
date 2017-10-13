<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="RegisterForClasses.aspx.cs" Inherits="FinalProjectTimPauley.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .Padleft {
            position: relative;
            top: 10px;
            left: 10px;
            width: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Please register for a class:</h1>
    <asp:SqlDataSource ID="SqlDataSourceRequestedClass" runat="server" ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>"
        ProviderName="<%$ ConnectionStrings:AdvWebProjectConnectionString.ProviderName %>"
        SelectCommand="SELECT * FROM [Classes] WHERE ([ClassId] = @ClassId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ClassId" QueryStringField="ClassId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="LabelMessage" runat="server" Text="Label"></asp:Label>
    <br />
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
            BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="PadLeft"
            DataKeyNames="ClassId" DataSourceID="SqlDataSourceRequestedClass" Height="16px" HorizontalAlign="Center"
            ShowHeaderWhenEmpty="True" Width="720px" >
            <Columns>
                <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" SortExpression="ClassId" />
                <asp:BoundField DataField="ClassName" HeaderText="ClassName" SortExpression="ClassName" />
                <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" SortExpression="ClassDate" />
                <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" SortExpression="ClassDescription" />
            </Columns>
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"
                ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    <br />
    <br />

    <div class="button">
        <asp:Button ID="ButtonConfirm" runat="server" Text="Confim Selection" Width="225px" OnClick="ButtonConfirm_Click" />
    </div>
    <div class="button">
        <asp:Button ID="ButtonReturn" runat="server" Text="Select a different class" />
    </div>
    <div class="button">
        <asp:Button ID="ButtonVerifyYourClasses" runat="server" Text="Verify Your Current Classes" />
    </div>
    </asp:Content>
