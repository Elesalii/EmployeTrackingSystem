﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="EmployeTrackingSystem.RegisterPage" %>

<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>RegisterPage</title>

    <!-- Bootstrap core CSS -->
    <link href="/ali/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="/ali/signin.css" rel="stylesheet" />
  </head>

  <body>
    <form runat="server">
        
        <asp:Button ID="btn_authorize" runat="server" Text="Authorize MasterCard" class="btn btn-lg btn-success" type="submit" OnClick="btn_authorize_Click" />
        
        <asp:Label ID="LabelMasterAutho" runat="server" OnLoad="LabelMasterAutho_Load">...scan master card</asp:Label>
            <asp:Label ID="authorization_msg" runat="server" ForeColor="Black" Visible="False"></asp:Label>
        <br />
      

      <div class="form-group">
        &nbsp;</div>
      <div class="form-group">
        <label for="inputPatronId">Patron Id</label>
        <asp:TextBox ID="textboxPatronID" class="form-control" runat="server"></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="inputCardId">CardId</label>
        <asp:TextBox ID="textboxCardID" class="form-control" runat="server"></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="inputUsername">Username</label>
        <asp:TextBox ID="textboxUsername" class="form-control" runat="server"></asp:TextBox>
      </div>
      <div class="form-group">
        <label for="inputPassword">Password</label>
        <asp:TextBox ID="textboxPassword" class="form-control" runat="server"></asp:TextBox>
      </div>
        <div class="form-group">
        <label for="inputPassword">E-mail</label>
        <asp:TextBox ID="textboxEmail" class="form-control" runat="server"></asp:TextBox>
      </div>

        <asp:Button ID="btn_register2" class="btn btn-primary" runat="server" Text="Register" OnClick="btn_register2_Click" />
        <p>
            &nbsp;</p>
    </form>
  </body>
</html>

