<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Add-Delete_Page.aspx.cs"
Inherits="EmployeTrackingSystem.Add_Delete_Page" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>Add/Delete Employees</title>

    <!-- Bootstrap core CSS -->
    <link href="ali/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="ali/signin.css" rel="stylesheet" />
  </head>

  

      <body>
        <form runat="server">
          <div class="container border" style="display: block">
            <h2>Add / Delete</h2>
            <div class="form-group row">
              <label for="inputEmployeeId" class="col-sm-4 col-form-label"
                >Employee Id</label
              >
              <div class="col-sm-3">
                <asp:TextBox
                  ID="textbox_emp_id"
                  runat="server"
                  class="form-control"
                  CssClass="was-validated"
                ></asp:TextBox>
              </div>
            </div>
            <div class="form-group row">
              <label for="inputEmployeeName" class="col-sm-4 col-form-label"
                >Employee Name</label
              >
              <div class="col-sm-3">
                <asp:TextBox
                  ID="textbox_emp_name"
                  runat="server"
                  class="form-control"
                  CssClass="was-validated"
                ></asp:TextBox>
              </div>
            </div>
            <div class="form-group row">
              <label for="inputEmployeeSurname" class="col-sm-4 col-form-label"
                >Employee Surname</label
              >
              <div class="col-sm-3">
                <asp:TextBox
                  ID="textbox_emp_surname"
                  runat="server"
                  class="form-control"
                  CssClass="was-validated"
                ></asp:TextBox>
              </div>
            </div>
            <asp:ScriptManager ID="ScriptManager_card" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel_card" runat="server">
              <ContentTemplate>
                <asp:Timer
                  ID="Timer_for_card"
                  runat="server"
                  Interval="3000"
                  OnTick="Timer_for_card_Tick"
                ></asp:Timer>
                <div class="form-group row">
                  <label for="inputCardId" class="col-sm-4 col-form-label"
                    >Card Id</label
                  >
                  <div class="col-sm-3">
                    <asp:TextBox
                      ID="textbox_card_id"
                      runat="server"
                      class="form-control"
                      CssClass="was-validated"
                      Height="30px"
                      MaxLength="30"
                    ></asp:TextBox>
                  </div>
                </div>

                <div class="form-group row pl-2">
                  <asp:Button
                    ID="btn_add_emp"
                    runat="server"
                    Text="Add"
                    class="btn btn-primary col-sm-4"
                    OnClick="btn_add_emp_Click"
                  />
                  <asp:Button
                    ID="btn_delete_emp"
                    runat="server"
                    Text="Delete"
                    class="btn btn-secondary col-sm-4"
                    OnClick="btn_delete_emp_Click"
                  />
                </div>
                <asp:Label
                  ID="label_query_status"
                  runat="server"
                  Font-Bold="True"
                  Font-Italic="True"
                  Visible="False"
                ></asp:Label>
              </ContentTemplate>
            </asp:UpdatePanel>
          </div>
        </form>
      </body>
    </html>
</html>
