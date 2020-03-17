<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="SearchApplication.aspx.cs" Inherits="CaseStudy.SearchApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 417px;
            height: 270px;
        margin-left: 0px;
    }
        .auto-style8 {
            width: 433px;
        }
        .auto-style9 {
            width: 380px;
            height: 26px;
        }
        .auto-style10 {
            width: 380px;
            height: 25px;
        }
        .auto-style11 {
            height: 25px;
        }
        .auto-style12 {
            width: 380px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style7">
        <tr>
            <td class="auto-style9" style="font-weight: bold">User Search</td>
        </tr>
        <tr>
            <td class="auto-style8" colspan="4">use any combination of fields below to search through all customers</td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                <td class="auto-style11"><asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style13" Height="19px" Width="136px"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="Label4" runat="server" Text="Application ID"></asp:Label></td>
           
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" Text="Search" BackColor="#33CC33" OnClick="Button1_Click" /></td>
        </tr>
       
        </table>
         <tr>
            <td class="auto-style12">
                <asp:GridView ID="GridView1" runat="server" Width="409px" HorizontalAlign="Center" AllowPaging="True" Height="72px" PageIndex="2" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging"></asp:GridView>
            </td>
        </tr>
</asp:Content>
