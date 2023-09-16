<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Emp.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top: 70px">
        <div class="row">
            <div class="col-md-12">
                <h2 style="text-align: center">Update Profile</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

                <div class="form-group">
                    <label for="email">Name: <span style="color: red">*</span></label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="email">Contact: <span style="color: red">*</span></label>
                    <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="txtContact"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd">Email:</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="txtEmail"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd">Department: <span style="color: red">*</span></label>
                   <asp:TextBox runat="server" Enabled="false"  CssClass="form-control" ID="txtdept"></asp:TextBox>
              </div>
                <asp:Button OnClick="btnSave_Click"  runat="server" ID="btnSave" Text="Update Details" CssClass="btn btn-primary" />

            </div>
        </div>
    </div>
</asp:Content>
