<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="Emp.EmployeeList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="contaner" style="margin-top:100px">
    <h1 class="my-3" style="text-align: center">Employee List</h1>
    <div class="row">
        <div class="col-md-2">
        </div>
        <div class="col-md-8">
            <div class="table-responsive">
            <asp:GridView ID="gvdata"  CssClass="table table-striped" runat="server" AutoGenerateColumns="false" EmptyDataText="No data found">
                <Columns>
                    <asp:TemplateField HeaderText="Employee-Id" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Srno") %>'></asp:Label>
                        </ItemTemplate>
                      
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblContact" runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Dept" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lbldept" runat="server" Text='<%# Eval("Dept") %>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="View Details">

                        <ItemTemplate>

                            <a class="btn btn-primary" href='EmployeeProfile.aspx?id=<%# Eval("Srno")%>'>View Details</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
                </div>
        </div>
    </div>
</div>
</asp:Content>
