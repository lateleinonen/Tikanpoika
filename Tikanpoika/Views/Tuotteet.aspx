<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tuotteet.aspx.cs" Inherits="Tikanpoika.Views.Tuotteet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TuoteID" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" Height="141px" Width="241px">
	<Columns>
		<asp:CommandField ShowSelectButton="True" />
		<asp:BoundField DataField="TuoteID" HeaderText="TuoteID" ReadOnly="True" SortExpression="TuoteID" />
		<asp:BoundField DataField="Nimi" HeaderText="Nimi" SortExpression="Nimi" />
		<asp:BoundField DataField="Hinta" HeaderText="Hinta" SortExpression="Hinta" />
		<asp:BoundField DataField="Veroprosentti" HeaderText="Veroprosentti" SortExpression="Veroprosentti" />
	</Columns>
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tuote]"></asp:SqlDataSource>

</asp:Content>
