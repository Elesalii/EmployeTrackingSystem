<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="EmployeTrackingSystem.RegisterPage" %>

<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>RegisterPage</title>

    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
    crossorigin="anonymous"
  />
  <script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
    crossorigin="anonymous"
  ></script>
  </head>

  <body class="bg-light">
    <form runat="server">
      <div class="container mt-3">
        <div class="form-group card col-6 mx-auto px-4 justify-content-center shadow">
          <br>
        <h2>Add / Delete</h2>
        <hr>
        <div class="form-group row mb-2">
          <asp:Button ID="btn_authorize" runat="server" Text="Scan Master Card" class="btn btn-lg btn-success" type="submit" OnClick="btn_authorize_Click" />
          <asp:ScriptManager ID="ScriptManager_card" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel_card" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer_for_master" runat="server" Interval="2000" OnTick="Timer_for_master_Tick"></asp:Timer>
          <asp:Label ID="LabelMasterAutho" runat="server" OnLoad="LabelMasterAutho_Load"></asp:Label>
                    <asp:Label ID="authorization_msg" runat="server" ForeColor="Black" Visible="False"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
          <br />
        </div>
      <div class="form-group row mb-2">
        <label for="inputPatronId" class="col-sm-3 col-form-label"> Patron Id</label>
        <asp:TextBox ID="textboxPatronID" class="form-control col-sm-9" runat="server"></asp:TextBox>
      </div>
      <%-- <div class="form-group row mb-2">
        <label for="inputCardId" class="col-sm-3 col-form-label">CardId</label>
        <asp:TextBox ID="textboxCardID" class="form-control col-sm-9" runat="server"></asp:TextBox>
      </div> --%>
      <div class="form-group row mb-2">
        <label for="inputUsername" class="col-sm-3 col-form-label">Username</label>
        <asp:TextBox ID="textboxUsername" class="form-control col-sm-9" runat="server"></asp:TextBox>
      </div>
      <div class="form-group row mb-2">
        <label for="inputPassword" class="col-sm-3 col-form-label">Password</label>
        <asp:TextBox ID="textboxPassword" class="form-control col-sm-9" runat="server"></asp:TextBox>
      </div>
        <div class="form-group row mb-2">
        <label for="inputPassword" class="col-sm-3 col-form-label">E-mail</label>
        <asp:TextBox ID="textboxEmail" class="form-control col-sm-9" runat="server"></asp:TextBox>
      </div>
      <div class="form-group row mb-2">
        <asp:UpdatePanel ID="UpdatePanel_btn" runat="server">
          <ContentTemplate>
    <asp:Button ID="btn_register2" class="btn btn-primary col-12 mb-2" runat="server" Text="Register" OnClick="btn_register2_Click" />
              </ContentTemplate>
          </asp:UpdatePanel>
    <asp:Button ID="btn_to_index" class="btn btn-light col-12 mb-2" runat="server" Text="Back to Login" OnClick="btn_to_index_Click" />
      </div>
     </div>
   </div>
    </form>
  </body>
</html>

