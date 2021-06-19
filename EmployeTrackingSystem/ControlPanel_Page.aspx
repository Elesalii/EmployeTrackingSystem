<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlPanel_Page.aspx.cs" Inherits="EmployeTrackingSystem.ControlPanel_Page" EnableEventValidation="false" %>

<%@ Register assembly="DevExpress.Web.v20.1, Version=20.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>ControlPanel</title>

   <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
     <%-- integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
      crossorigin="anonymous"--%>
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
     <%-- integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
      crossorigin="anonymous"--%>
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
              <a class="nav-link active" aria-current="page" href="ControlPanel_Page.aspx">Control Panel</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="ManagementPanel_Page.aspx">Management Panel</a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Operations
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="UpdatePage.aspx">Update Employee</a></li>
                <li>
                  <a class="dropdown-item" href="Add-Delete_Page.aspx">Add/Delete Employee</a>
                </li>

                <li><a class="dropdown-item" href="Add-Delete-Patron_Page.aspx">Add/Delete Patron</a></li>
              </ul>
            </li>
           
          </ul>
          <form class="d-flex">
              <a
              class="nav-link disabled"
              href="#"
              tabindex="-1"
              aria-disabled="true"
              style="color: rgba(255, 255, 255, 0.815) !important"
              ><asp:Label ID="Label_session" runat="server" Forecolor="White" BorderColor="#666666" Font-Italic="True" Font-Size="Smaller" Font-Underline="True"></asp:Label></a
            >
              
            <asp:Button ID="btn_logout" runat="server" ForeColor="White" Text="Log out" class="nav-link btn btn-danger" aria-current="page" OnClick="btn_logout_Click" />
          </form>
        </div>
      </div>
    </nav>
          <asp:ScriptManager ID="ScriptManager_div" runat="server">
          </asp:ScriptManager>
          <asp:UpdatePanel ID="UpdatePanel_div" runat="server">
              <ContentTemplate>
                  <asp:Timer ID="Timer_for_div" runat="server" Interval="5000" OnTick="Timer_for_div_Tick"></asp:Timer>                 

    <div class="container" style="margin-top: 80px">
      <div class="row p-4 card gx-0 shadow">
        <h2>Last Scanned Employee</h2>
        <hr />
        <div class="row">
          <div class="form-group col-lg-6 mt-2">
            <label for="exampleInputEmail1">Last Scanned ID</label>

            <asp:TextBox
              ID="textboxlastscannedid"
              runat="server"
              OnLoad="textboxlastscannedid_Load"
              class="form-control"
              type="text"
            ></asp:TextBox>
          </div>
          <div class="form-group col-lg-6 mt-2">
            <label for="textbox_empname">Last Scanned Name</label>

            <asp:TextBox
              ID="textbox_empname"
              runat="server"
              AutoPostBack="true"
              OnTextChanged="textbox_empname_TextChanged"
              class="form-control"
              type="text"
            ></asp:TextBox>
          </div>
          <div class="form-group col-lg-6 mt-2">
            <label for="exampleInputEmail1">Last Scanend Surname</label>
             <asp:TextBox
              ID="textbox_empsurname"
              runat="server"
              AutoPostBack="true"           
              class="form-control"
              type="text"
            ></asp:TextBox>
          </div>
          <div class="form-group col-lg-6 mt-2">
            <label for="exampleInputPassword1">Last Scanned Employee ID</label>
             <asp:TextBox
              ID="textbox_empID"
              runat="server"
              AutoPostBack="true"
              class="form-control"
              type="text"
            ></asp:TextBox>
          </div>
          <div class="form-group mt-4">
            <small id="emailHelp" class="form-text text-muted"
              >Current Status : Connected</small
            >
          </div>
            </div>
      </div>
        
      <div class="row mb-4 p-4 card gx-0 shadow mt-4">
        <h2>Employee List</h2>
        <hr />
          
        <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="false" class="table">  
                <Columns>
                    <asp:BoundField DataField="empID" HeaderText ="Employee id" />
                    <asp:BoundField DataField="empName" HeaderText ="Employee name" />
                    <asp:BoundField DataField="empSurname" HeaderText ="Employee surname" />
                    <asp:BoundField DataField="CardID" HeaderText ="Card id" />
                </Columns>
              </asp:GridView>
       
      </div>
      <div class="row mt-4 mb-5 p-4 card gx-0 shadow">
        <h2>Scan Logs</h2>
        <hr />
          <asp:GridView ID="gvRecords" runat="server" AutoGenerateColumns="false" class="table">  
                <Columns>               
                    <asp:BoundField DataField="snap_time" HeaderText ="Scan Time" />
                    <asp:BoundField DataField="emp_name" HeaderText ="Employee Name" />
                    <asp:BoundField DataField="emp_surname" HeaderText ="Employee Surname" />
                </Columns>
              </asp:GridView>
        
      </div>
    </div>
                  </ContentTemplate>
          </asp:UpdatePanel>
      </form>
  </body>
</html>

