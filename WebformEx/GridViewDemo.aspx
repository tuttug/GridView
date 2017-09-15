﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewDemo.aspx.cs" Inherits="WebformEx.GridViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>First Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddFirstName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>Last Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnAddEmployee" Text="Add Employee" OnClick="btnAddEmployee_Click" runat="server"/>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridViewEmployee" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridViewEmployee_RowCancelingEdit" OnRowEditing="GridViewEmployee_RowEditing" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" OnRowDeleting="GridViewEmployee_RowDeleting" OnRowUpdating="GridViewEmployee_RowUpdating" >
                <Columns>
                    <asp:BoundField DataField="EmpId" HeaderText="EmpId" ReadOnly="true"/>
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" />--%>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
