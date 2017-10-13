<%@ Page Title="" Language="C#" MasterPageFile="~/Registration.Master" AutoEventWireup="true" CodeBehind="MyClasses.aspx.cs" Inherits="FinalProjectTimPauley.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <h1>My Classes</h1>
         <p style="font-size: medium; color: #333333;" align="center">&nbsp;Here are the current classes</p>

    
     <asp:GridView ID="GridViewClassList" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSourceMyClasses" BackColor="White" BorderColor="#3366CC" BorderStyle="None" 
        BorderWidth="1px" HorizontalAlign="Center" 
        ShowHeaderWhenEmpty="True" >
        <Columns>
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                SortExpression="StudentName" >
            </asp:BoundField>
            <asp:BoundField DataField="ClassId" 
                HeaderText="ClassId" SortExpression="ClassId" />
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
        <RowStyle BackColor="White" ForeColor="#003399" BorderColor="Black" 
            BorderStyle="Solid" BorderWidth="2px" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
        <p style="font-size: medium; color: #333333;" align="center">&nbsp;Please contact the school to un-register a class</p>
<br />
<asp:SqlDataSource ID="SqlDataSourceMyClasses" runat="server" 
    ConnectionString="<%$ ConnectionStrings:AdvWebProjectConnectionString %>" 
    ProviderName="<%$ ConnectionStrings:AdvWebProjectConnectionString.ProviderName %>" 
    
        SelectCommand="pSelClassesByStudentID" 
        CacheDuration="180" 
        SelectCommandType="StoredProcedure" DataSourceMode="DataReader">
    <SelectParameters>
        <asp:SessionParameter Name="StudentId" SessionField="StudentId" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>