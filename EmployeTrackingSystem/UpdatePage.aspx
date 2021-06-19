<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="EmployeTrackingSystem.UpdatePage" EnableEventValidation="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>Add/Delete Employees</title>

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
          <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">ETS</a>
              <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link" href="ControlPanel_Page.aspx"
                      >Control Panel</a
                    >
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="ManagementPanel_Page.aspx"
                      >Management Panel</a
                    >
                  </li>
                  <li class="nav-item dropdown">
                    <a
                      class="nav-link dropdown-toggle active"
                      href="#"
                      id="navbarDropdown"
                      role="button"
                      data-bs-toggle="dropdown"
                      aria-expanded="false"
                    >
                      Operations
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li>
                        <a class="dropdown-item" href="UpdatePage.aspx"
                          >Update Employee</a
                        >
                      </li>
                      <li>
                        <a class="dropdown-item" href="Add-Delete_Page.aspx"
                          >Add/Delete Employee</a
                        >
                      </li>
    
                      <li>
                        <a class="dropdown-item" href="Add-Delete-Patron_Page.aspx"
                          >Add/Delete Patron</a
                        >
                      </li>
                    </ul>
                  </li>
                </ul>
                <div class="d-flex">
                  <a
                    class="nav-link disabled"
                    href="#"
                    tabindex="-1"
                    aria-disabled="true"
                    style="color: rgba(255, 255, 255, 0.815) !important"
                    ><asp:Label
                      ID="Label_session_update_page"
                      runat="server"
                      Forecolor="White"
                      BorderColor="#666666"
                      Font-Italic="True"
                      Font-Size="Smaller"
                      Font-Underline="True"
                    ></asp:Label
                  ></a>
    
                  <asp:Button
                    ID="btn_logout_update"
                    runat="server"
                    Text="Log out"
                    class="nav-link btn btn-danger"
                    aria-current="page"
                    ForeColor="White"
                    OnClick="btn_logout_update_Click"
                  />
                </div>
              </div>
            </div>
          </nav>

          <div class="container" style="margin-top: 80px;">
            <div class="form-group card col-6 mx-auto px-4 justify-content-center shadow">
              <br>
            <h2>Update</h2>
            <hr>
            <div class="form-group row mb-3 mt-2">
              <label for="inputEmployeeId" class="col-sm-3 col-form-label"
                >Employee Id</label
              >
              <div class="col-sm-9">
                <asp:TextBox
                  ID="textbox_emp_id_update"
                  runat="server"
                  class="form-control"
                ></asp:TextBox>
              </div>
            </div>
            <div class="form-group row mb-3">
              <label for="inputEmployeeName" class="col-sm-3 col-form-label"
                >Employee Name</label
              >
              <div class="col-sm-9">
                <asp:TextBox
                  ID="textbox_emp_name_update"
                  runat="server"
                  class="form-control"
                ></asp:TextBox>
              </div>
            </div>
            <div class="form-group row mb-3">
              <label for="inputEmployeeSurname" class="col-sm-3 col-form-label"
                >Employee Surname</label
              >
              <div class="col-sm-9">
                <asp:TextBox
                  ID="textbox_emp_surname_update"
                  runat="server"
                  class="form-control"
                ></asp:TextBox>
              </div>
            </div>
            <asp:ScriptManager ID="ScriptManager_update" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel_update" runat="server">
              <ContentTemplate>
                <asp:Timer
                  ID="Timer_for_card_scan"
                  runat="server"
                  Interval="3000"
                  OnTick="Timer_for_card_Tick"
                ></asp:Timer>
                <div class="form-group row mb-3">
                  <label for="inputCardId" class="col-sm-3 col-form-label"
                    >Card Id</label
                  >
                  <div class="col-sm-9">
                    <asp:TextBox
                      ID="textbox_card_id_update"
                      runat="server"
                      class="form-control"
                      Height="30px"
                      MaxLength="30"
                    ></asp:TextBox>
                  </div>
                </div>

                <div class="form-group row mb-3 pl-2 justify-content-center">
                  <asp:Button
                    ID="btn_update"
                    runat="server"
                    Text="Update"
                    class="btn btn-primary col-sm-4 mx-1"
                    OnClick="btn_update_Click"
                  />     
                </div>
                <div class="form-group row mb-3 text-center">
                  <asp:Label
                  ID="label_query_status"
                  runat="server"
                  Font-Bold="True"
                  Font-Italic="True"
                  Visible="False"
                ></asp:Label>

                </div>
                
              </ContentTemplate>
            </asp:UpdatePanel>
          </div>
        </div>
        </form>
      </body>
    </html>
