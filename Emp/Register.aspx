<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Emp.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container" style="margin-top: 70px">
        <div class="row">
            <div class="col-md-12">
                <h2 style="text-align: center">Register Now</h2>
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
                    <label for="pwd">Email: <span style="color: red">*</span></label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="txtEmail"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="pwd">Department: <span style="color: red">*</span></label>
                    <asp:DropDownList CssClass="form-control" runat="server" ID="ddldept">
                        <asp:ListItem Value="Select" Text="Select Department"></asp:ListItem>
                        <asp:ListItem Value="1" Text="IT"></asp:ListItem>
                        <asp:ListItem Value="2" Text="HR"></asp:ListItem>
                        <asp:ListItem Value="3" Text="Account"></asp:ListItem>
                        <asp:ListItem Value="4" Text="Purchase"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="pwd">Set Password: <span style="color: red">*</span></label>
                    <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="txtPassword"></asp:TextBox>
                </div>
                <asp:Button OnClientClick="return valid()" OnClick="btnSave_Click" runat="server" ID="btnSave" Text="Register" CssClass="btn btn-primary" />

            </div>
        </div>
    </div>
    <script>
        function valid() {
            var name = document.getElementById('<%= this.txtName.ClientID %>').value;
            var email = document.getElementById('<%= this.txtEmail.ClientID %>').value;
            var phone = document.getElementById('<%= this.txtContact.ClientID %>').value;
            var dept = document.getElementById('<%= this.ddldept.ClientID %>').value;
            var password = document.getElementById('<%= this.txtPassword.ClientID %>').value;

            mobilecon = /^\d{10}$/;
            emailcon = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
            
            if (name == "" || email == "" || phone == "" || dept == "Select") {
                swal("Please fill all details to proceed..!","all details required","error");
                return false;
            }
            if (phone != '') {
                if (!phone.match(mobilecon)) {
                    swal("Please Enter Valid Contact Number","contact number must be 10 digits","error");
                    return false;

                }
            }
            if (email != '') {
                if (!email.match(emailcon)) {
                    swal("Please Enter Valid Email-Id","you have enetered incorrect email-id","error");
                    return false;
                }
            }

            return true;
        }
    </script>
</asp:Content>
