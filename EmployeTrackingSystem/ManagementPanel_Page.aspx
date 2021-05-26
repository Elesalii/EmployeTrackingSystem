<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagementPanel_Page.aspx.cs" Inherits="EmployeTrackingSystem.ManagementPanel_Page" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <title>MagamentPanel</title>

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

  <body class="text-center">
      <form runat="server">
    <div class="container">
      <form>
        <div class="form-group row">
          <label for="inputName" class="col-sm-1 col-form-label">Name</label>
          <div class="col-sm-4">
            <input
              type="text"
              class="form-control"
              id="inputName"
              placeholder="Name"
            />
          </div>
        </div>
        <div class="form-group row">
          <label for="inputDate" class="col-sm-1 col-form-label">Date</label>
          <div class="col-sm-2">
            <input type="date" class="form-control" id="inputStartDate" />
          </div>
          <div class="col-sm-2">
            <input type="date" class="form-control" id="inputEndDate" />
          </div>
        </div>
        <div class="form-group row">
          <a href="#" class="btn btn-success col-sm-2">Filter</a>
        </div>
      </form>
     <div class="row mb-4 p-4 card gx-0 shadow mt-4">
        <h1>Employee List</h1>
        <hr />
          
        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="false" class="table">  
                <Columns>
                    <asp:BoundField DataField="emp_id" HeaderText ="Employee id" />
                    <asp:BoundField DataField="emp_name" HeaderText ="Employee name" />
                    <asp:BoundField DataField="emp_surname" HeaderText ="Employee surname" />
                    <asp:BoundField DataField="emp_card_id" HeaderText ="Card id" />
                    <asp:BoundField DataField="snap_time" HeaderText ="Scan time" />
                </Columns>
              </asp:GridView>
       
      </div>
      <div class="form-group row">
        <a href="UpdatePage.aspx" class="btn btn-secondary col-sm-2 mt-5">Update</a>
      </div>
    </div>
      </form>
  </body>
</html>

