<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="CaseStudy.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <table align="center">
    <tr>
    <td><asp:Button ID="Button1" runat="server" Text="Create Application" BackColor="Lime" OnClick="Button1_Click" /></td>
    </tr> 
    <tr>
       <td> <asp:Button ID="Button2" runat="server" Text="Search Aplication" BackColor="Lime" OnClick="Button2_Click" /></td>
    </tr>
</table>
</asp:Content>
