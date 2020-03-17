<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="HouseholdInfo.aspx.cs" Inherits="CaseStudy.Household_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 320px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            width: 166px;
        }
        .auto-style10 {
            height: 23px;
            width: 166px;
        }
    .auto-style11 {
        width: 166px;
        height: 30px;
    }
    .auto-style12 {
        height: 30px;
    }
        .auto-style13 {
            width: 166px;
            height: 92px;
        }
        .auto-style14 {
            height: 92px;
            width: 129px;
        }
        .auto-style15 {
            width: 129px;
        }
        .auto-style16 {
            height: 23px;
            width: 129px;
        }
        .auto-style17 {
            height: 30px;
            width: 129px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style7">
            <tr>
                <td class="auto-style9" style="font-weight: bold">Create Application</td>
                <td class="auto-style15"></td>
                <td></td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="*=Required field" ForeColor="Red"></asp:Label></td>
            </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style15"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style9">Household Member</td>
        </tr>
            <tr>
                <td class="auto-style10"><asp:Label ID="Label2" runat="server" Text="*" ForeColor="#FF3300"></asp:Label>First Name</td>
                <td class="auto-style16">
                    <asp:Label ID="Label3" runat="server" Text="M.I."></asp:Label></td>
                <td class="auto-style8">
                    <asp:Label ID="Label4" runat="server" Text="*" ForeColor="#FF3300"></asp:Label>Last Name</td>
                <td class="auto-style8">
                    <asp:Label ID="Label5" runat="server" Text="Suffix"></asp:Label></td>          
        </tr>
        <tr>
            <td class="auto-style9"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td class="auto-style15"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>

            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="-1">select</asp:ListItem>
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Firstname" ForeColor="#CC0000" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
            <td class="auto-style15"></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Lastname" ForeColor="#CC0000" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
             <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select suffix" ForeColor="#CC0000" ControlToValidate="DropDownList1" InitialValue="select"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Inavild name" ControlToValidate="TextBox1" Display="None" ForeColor="#CC0000" ValidationExpression="^[a-zA-Z\ ^ ${ } [ ] ( ) . + ? | - &]$"></asp:RegularExpressionValidator></td> 
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label6" runat="server" Text="*" ForeColor="#FF3300"></asp:Label>Date of Birth(mm/dd/yyyy)</td>
            <td class="auto-style15">
                <asp:Label ID="Label7" runat="server" Text="*" ForeColor="#FF3300"></asp:Label>Gender</td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Height="16px"></asp:TextBox></td>
            <td class="auto-style14">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="46px" Height="53px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Date of birth" ForeColor="#CC0000" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Select gender" ForeColor="#CC0000" ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style17"></td>
            <td class="auto-style12"></td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" Text="Add Member" BackColor="#33CC33" OnClick="Button1_Click" /></td>
        </tr>
        <tr>
            <td class="auto-style10"></td>
            <td class="auto-style16"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Button ID="Button2" runat="server" Text="Save and Exit" BackColor="#33CC33" OnClick="Button2_Click" CausesValidation="False"  /></td>
        </tr>
        </table>
</asp:Content>
