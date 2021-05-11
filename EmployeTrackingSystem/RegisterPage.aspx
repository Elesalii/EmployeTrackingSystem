<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="EmployeTrackingSystem.RegisterPage" %>

<!DOCTYPE html>
<html lang="en">
  <head>
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
    <form>
      <button type="submit" class="btn btn-lg btn-success">Listen Port</button>
      <br />

      <div class="form-group">
        <label for="inputId">Id</label>
        <input class="form-control" id="inputId" />
      </div>
      <div class="form-group">
        <label for="inputPatronId">PatronId</label>
        <input class="form-control" id="inputPatronId" />
      </div>
      <div class="form-group">
        <label for="inputCardId">CardId</label>
        <input class="form-control" id="inputCardId" />
      </div>
      <div class="form-group">
        <label for="inputUsername">Username address</label>
        <input type="email" class="form-control" id="inputUsername" />
      </div>
      <div class="form-group">
        <label for="inputPassword">Password</label>
        <input type="password" class="form-control" id="inputPassword" />
      </div>

      <button type="submit" class="btn btn-primary">Register</button>
    </form>
  </body>
</html>

