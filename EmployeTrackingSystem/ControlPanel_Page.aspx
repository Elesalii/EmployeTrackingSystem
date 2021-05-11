<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlPanel_Page.aspx.cs" Inherits="EmployeTrackingSystem.ControlPanel_Page" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>ControlPanel</title>

    <!-- Bootstrap core CSS -->
    <link href="/ali/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="/ali/signin.css" rel="stylesheet" />
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.css"
    />

    <script
      type="text/javascript"
      charset="utf8"
      src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.js"
    ></script>
  </head>

  <body>
    <div class="container-fluid" style="width: 60%">
      <div class="row">
        <div class="col-12 text-center">
          <button class="btn btn-primary">Start Scanning Process</button>
          <button class="btn btn-danger">Stop Scanning Process</button>
        </div>
        <div class="col-8">
          <span>Last Scanned Id : </span>

          <span class="lastScannedId">1239193</span>
          <br />
          <span>Last Scanned Name :</span>
          <span class="lastScannedName">Mehmet</span>
        </div>
        <div class="col-4 text-center">
          <span>Current Status</span>
          <br />
          <span>Connected</span>
        </div>
        <div class="col-12 text-center">
          <a href="ManagementPanel_Page.aspx" class="btn btn-secondary"
            >Management Panel</a
          >
        </div>
        <div class="col-12">
          <table id="table_id" class="display">
            <thead>
              <tr>
                <th>Column 1</th>
                <th>Column 2</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Row 1 Data 1</td>
                <td>Row 1 Data 2</td>
              </tr>
              <tr>
                <td>Row 2 Data 1</td>
                <td>Row 2 Data 2</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="container-fluid" style="width: 40%">
      <div class="row">
        <div class="col-12" style="border: 1px solid black; height: 100vh">
          <p>ss</p>
          <p>sss</p>
          <p>ddd</p>
        </div>
      </div>
    </div>
  </body>
  <script>
    $(document).ready(function () {
      $("#table_id").DataTable();
    });
  </script>
</html>

