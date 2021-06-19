<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="ManagementPanel_Page.aspx.cs"
Inherits="EmployeTrackingSystem.ManagementPanel_Page" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Management Panel</title>
    <!-- DataTables -->
    <link
      rel="stylesheet"
      href="https://adminlte.io/themes/v3/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css"
    />
    <link
      rel="stylesheet"
      href="https://adminlte.io/themes/v3/plugins/datatables-responsive/css/responsive.bootstrap4.min.css"
    />
    <link
      rel="stylesheet"
      href="https://adminlte.io/themes/v3/plugins/datatables-buttons/css/buttons.bootstrap4.min.css"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
   
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
              <a class="nav-link" aria-current="page" href="ControlPanel_Page.aspx">Control Panel</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="ManagementPanel_Page.aspx">Management Panel</a>
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
              
            <asp:Button ID="btn_logout_mp" runat="server" ForeColor="White" Text="Log out" class="nav-link btn btn-danger" aria-current="page" OnClick="btn_logout_mp_Click" />
          </form>
        </div>
      </div>
    </nav>   
            <div class="container" style="margin-top: 80px;">
              
                <div
                  id="example1_wrapper"
                  class="dataTables_wrapper dt-bootstrap4"
                >
                  <div class="row p-4 card gx-0 shadow">
                    <h2>Employee List</h2>
        <hr />
                    <div class="col-sm-12">
                      <table
                        id="example1"
                        class="
                          table table-bordered table-striped
                          dataTable
                          dtr-inline
                        "
                        role="grid"
                        aria-describedby="example1_info"
                      >
                        <thead>
                          <tr role="row">
                            <th
                              class="sorting sorting_asc"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-sort="ascending"
                              aria-label="Rendering engine: activate to sort column descending"
                            >
                              Employee ID
                            </th>
                            <th
                              class="sorting"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-label="Browser: activate to sort column ascending"
                            >
                              Employee Name
                            </th>
                            <th
                              class="sorting"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-label="Platform(s): activate to sort column ascending"
                            >
                              Employee Surname
                            </th>
                            <th
                              class="sorting"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-label="Engine version: activate to sort column ascending"
                            >
                              Card ID
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          <% demo(); %>
                        </tbody>
                      </table>
                    </div>
                  </div>
                  <div class="row p-4 card gx-0 shadow mt-4">
                    <h2>Logs</h2>
                    <hr />
                    <div class="col-sm-12">
                      <table
                        id="example2"
                        class="
                          table table-bordered table-striped
                          dataTable
                          dtr-inline
                        "
                        role="grid"
                        aria-describedby="example2_info"
                      >
                        <thead>
                          <tr role="row">
                            <th
                              class="sorting sorting_asc"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-sort="ascending"
                              aria-label="Rendering engine: activate to sort column descending"
                            >
                              Employee ID
                            </th>
                            <th
                              class="sorting"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-label="Browser: activate to sort column ascending"
                            >
                              Employee Name
                            </th>
                            <th
                              class="sorting"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-label="Platform(s): activate to sort column ascending"
                            >
                              Employee Surname
                            </th>
                            <th
                              class="sorting"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-label="Engine version: activate to sort column ascending"
                            >
                              Card ID
                            </th>
                            <th
                              class="sorting"
                              tabindex="0"
                              aria-controls="example1"
                              rowspan="1"
                              colspan="1"
                              aria-label="Engine version: activate to sort column ascending"
                            >
                              Scan Time
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          <% demo2(); %>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
             
          </div>
            <!-- /.card -->
        

    <!-- jQuery -->
    <script src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- DataTables  & Plugins -->
    <script src="https://adminlte.io/themes/v3/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/jszip/jszip.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/pdfmake/pdfmake.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/pdfmake/vfs_fonts.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
    <!-- AdminLTE App -->
    <script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="https://adminlte.io/themes/v3/dist/js/demo.js"></script>
    <!-- Page specific script -->
    <script>
      $(function () {
        $("#example1")
          .DataTable({
            responsive: true,
            lengthChange: false,
            autoWidth: false,
            buttons: ["copy", "csv", "excel", "pdf", "print", "colvis"],
          })
          .buttons()
          .container()
          .appendTo("#example1_wrapper .col-md-6:eq(0)");
      });
      $(function () {
        $("#example2")
          .DataTable({
            responsive: true,
            lengthChange: false,
            autoWidth: false,
            buttons: ["copy", "csv", "excel", "pdf", "print", "colvis"],
          })
          .buttons()
          .container()
          .appendTo("#example2_wrapper .col-md-6:eq(0)");
      });
    </script>
          </form>
  </body>
</html>
