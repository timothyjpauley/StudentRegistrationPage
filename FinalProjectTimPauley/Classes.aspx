<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="FinalProjectTimPauley.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Classes Available to Register for</h1>
    <p>&nbsp;</p>
    <p style="right: 20px">
       
    <asp:GridView ID="GridViewClassList" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="ClassId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
        BorderWidth="1px" HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="ClassId" HeaderText="Item" ReadOnly="True" 
                SortExpression="ClassId" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ClassName" HeaderText="Class" 
                SortExpression="ClassName" />
            <asp:BoundField DataField="ClassDate" HeaderText="Date" 
                SortExpression="ClassDate" DataFormatString="{0:d}" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="ClassDescription" HeaderText="Description" 
                SortExpression="ClassDescription" >
            <ItemStyle Width="300px" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="2px" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>

    </p>
    <div class="button">
        <asp:Button ID="ButtonRegisterForClass" runat="server" Text="Register for Selected Class" OnClick="ButtonRegisterForClass_Click" />
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>"
        SelectCommand="SELECT [ClassId], [ClassName], [ClassDate], [ClassDescription] FROM [vClasses]"
        CacheDuration="180" EnableCaching="True"></asp:SqlDataSource>
</asp:Content>
