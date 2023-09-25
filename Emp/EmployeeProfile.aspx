<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EmployeeProfile.aspx.cs" Inherits="Emp.EmployeeProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin-top:30px">
      <div class="col-md-12">
          <h2 style="text-align: center">Employee Details</h2>
      </div>
  </div>
  <div class="row">
      <div class="col-md-3"></div>
      <div class="col-md-6">

          <div class="form-group">
              <label for="email">Name: <span style="color: red">*</span></label>
              <asp:TextBox Enabled="false" runat="server" CssClass="form-control" ID="txtName"></asp:TextBox>
          </div>
          <div class="form-group">
              <label for="email">Contact: <span style="color: red">*</span></label>
              <asp:TextBox runat="server" Enabled="false" TextMode="Number" CssClass="form-control" ID="txtContact"></asp:TextBox>
          </div>
          <div class="form-group">
              <label for="pwd">Email:</label>
              <asp:TextBox runat="server" Enabled="false" TextMode="Email" CssClass="form-control" ID="txtEmail"></asp:TextBox>
          </div>
          <div class="form-group">
              <label for="pwd">Department: <span style="color: red">*</span></label>
              <asp:DropDownList Enabled="false" CssClass="form-control" runat="server" ID="ddldept">
                  <asp:ListItem Value="Select" Text="Select Department"></asp:ListItem>
                  <asp:ListItem Value="1" Text="IT"></asp:ListItem>
                  <asp:ListItem Value="2" Text="HR"></asp:ListItem>
                  <asp:ListItem Value="3" Text="Account"></asp:ListItem>
                  <asp:ListItem Value="4" Text="Purchase"></asp:ListItem>
              </asp:DropDownList>
        </div>


      </div>
  </div>
</asp:Content>
