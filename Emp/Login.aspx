<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Emp.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="margin-top: 70px">
        <div class="row">
            <div class="col-md-12">
                <h2 style="text-align: center">Employee Login</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">

              
                
                <div class="form-group">
                    <label for="pwd">Email: <span style="color: red">*</span></label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="txtEmail"></asp:TextBox>
                </div>
                
                <div class="form-group">
                    <label for="pwd">Password: <span style="color: red">*</span></label>
                    <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="txtPassword"></asp:TextBox>
                </div>
                <asp:Button  OnClick="btnLogin_Click" runat="server" ID="btnLogin" Text="Login" CssClass="btn btn-primary" />

            </div>
        </div>
    </div>
</asp:Content>
