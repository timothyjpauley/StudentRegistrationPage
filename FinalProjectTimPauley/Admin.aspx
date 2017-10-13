<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FinalProjectTimPauley.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <h1>Adminstration Page</h1>
          <p>*Not to be used in production</p>
    <div class="Label">
          <p>Classes Table</p>
        </div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ClassId" DataSourceID="SqlDataSourceClasses" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4"  HorizontalAlign="Center"  >
        <Columns>
            <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" 
                SortExpression="ClassId" />
            <asp:BoundField DataField="ClassName" HeaderText="ClassName" 
                SortExpression="ClassName" />
            <asp:BoundField DataField="ClassDate" HeaderText="ClassDate" 
                SortExpression="ClassDate" />
            <asp:BoundField DataField="ClassDescription" HeaderText="ClassDescription" 
                SortExpression="ClassDescription" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceClasses" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:AdvWebProjectConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Classes]" DataSourceMode="DataReader"></asp:SqlDataSource>

    <div class="Label">
<p>Class Students Table</p>
        </div>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="ClassId,StudentId" DataSourceID="SqlDataSourceClassStudents" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4"  HorizontalAlign="Center" >
        <Columns>
            <asp:BoundField DataField="ClassId" HeaderText="ClassId" ReadOnly="True" 
                SortExpression="ClassId" />
            <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" 
                SortExpression="StudentId" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceClassStudents" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:AdvWebProjectConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [ClassStudents]" DataSourceMode="DataReader"></asp:SqlDataSource>

        <div class="Label">
<p>Students Table</p>
            </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="StudentId" DataSourceID="SqlDataSourceStudents" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4"  HorizontalAlign="Center" >
        <Columns>
            <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" 
                SortExpression="StudentId" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                SortExpression="StudentName" />
            <asp:BoundField DataField="StudentEmail" HeaderText="StudentEmail" 
                SortExpression="StudentEmail" />
            <asp:BoundField DataField="StudentLogin" HeaderText="StudentLogin" 
                SortExpression="StudentLogin" />
            <asp:BoundField DataField="StudentPassword" HeaderText="StudentPassword" 
                SortExpression="StudentPassword" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceStudents" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:AdvWebProjectConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [Students]" DataSourceMode="DataReader"></asp:SqlDataSource>
    <div class="Label">
<p>Login Request Table</p>
            </div>
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="LoginId" DataSourceID="SqlDataSourceLoginRequest" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4"  HorizontalAlign="Center" EmptyDataText="No rows are currently in this table">
        <Columns>
            <asp:BoundField DataField="LoginId" HeaderText="LoginId" InsertVisible="False" 
                ReadOnly="True" SortExpression="LoginId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" 
                SortExpression="EmailAddress" />
            <asp:BoundField DataField="LoginName" HeaderText="LoginName" 
                SortExpression="LoginName" />
            <asp:BoundField DataField="NewOrReactivate" HeaderText="NewOrReactivate" 
                SortExpression="NewOrReactivate" />
            <asp:BoundField DataField="ReasonForAccess" HeaderText="ReasonForAccess" 
                SortExpression="ReasonForAccess" />
            <asp:BoundField DataField="DateNeededBy" HeaderText="DateNeededBy" 
                SortExpression="DateNeededBy" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceLoginRequest" runat="server" 
        ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:AdvWebProjectConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [LoginRequests]" DataSourceMode="DataReader"></asp:SqlDataSource>
    <div class="Label">
          <p>    Store Procedures</p>
        </div>
          <table class="auto-style1">
              <tr>
                  <td>pDelClassStudents</td>
              </tr>
              <tr>
                  <td>pInsClassStudents</td>
              </tr>
              <tr>
                  <td>pInsLoginRequest</td>
              </tr>
              <tr>
                  <td>pSelCalssesByStudentID</td>
              </tr>
              <tr>
                  <td>pSelClassesByStudents</td>
              </tr>
              <tr>
                  <td>pSelLoginIdByLoginAndPassword</td>
              </tr>
              <tr>
                  <td>pUpdClassStudents</td>
              </tr>
          </table>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
</asp:Content>

