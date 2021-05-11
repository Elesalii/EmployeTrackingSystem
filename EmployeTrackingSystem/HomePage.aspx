<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeTrackingSystem.HomePage" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>HomePage</title>

    <!-- Bootstrap core CSS -->
    <link href="/ali/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="/ali/signin.css" rel="stylesheet" />
  </head>

  <body class="text-center">
    <form class="form-signin" runat="server">
      <img class="mb-4" src="/ali/ETS.PNG" alt="" height="72" />
      <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
      <label for="inputEmail" class="sr-only">Username</label>
        <asp:TextBox ID="usernametext" runat="server" placeholder="Username" class="form-control"></asp:TextBox>

      <label for="inputPassword" class="sr-only">Password</label>
        <asp:TextBox ID="passwordtext" runat="server" placeholder="Password" TextMode="Password" class="form-control"></asp:TextBox>

        <asp:Button ID="btn_login" runat="server" Text="Sign in" OnClick="btn_login_Click" class="btn btn-lg btn-primary btn-block" />
        <asp:Button ID="btn_register" runat="server" Text="Register" class="btn btn-lg btn-secondary btn-block" OnClick="btn_register_Click" />

         
    </form>
  </body>
</html>

