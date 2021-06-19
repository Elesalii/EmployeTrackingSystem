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

    <!-- Bootstrap core CSS -->
    <link href="/ali/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="/ali/signin.css" rel="stylesheet" />
  </head>

  <body>
    <form runat="server">
        
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
      

      <div class="form-group">
        &nbsp;</div>
      <div class="form-group">
        <label for="inputPatronId">Patron Id</label>
        <asp:TextBox ID="textboxPatronID" class="form-control" runat="server"></asp:TextBox>
      </div>
      <%--<div class="form-group">
        <label for="inputCardId">CardId</label>
        <asp:TextBox ID="textboxCardID" class="form-control" runat="server"></asp:TextBox>
      </div>--%>
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
        <asp:UpdatePanel ID="UpdatePanel_btn" runat="server">
              <ContentTemplate>
        <asp:Button ID="btn_register2" class="btn btn-primary" runat="server" Text="Register" OnClick="btn_register2_Click" />
                  </ContentTemplate>
              </asp:UpdatePanel>
        <p>
            &nbsp;</p>
    </form>
  </body>
</html>

