<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlPanel_Page.aspx.cs" Inherits="EmployeTrackingSystem.ControlPanel_Page" %>

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
    <div class="container">
      <div class="row">
        <div class="col-12 text-center">
            
          <button class="btn btn-danger">Stop Scanning Process</button>
        </div>
                 <form id="employeedata" runat="server">
                <div class="col-8">
                  <span>Last Scanned Card id : </span>
                    <asp:TextBox ID="textboxlastscannedid" runat="server" OnLoad="textboxlastscannedid_Load"></asp:TextBox>
                  <br />
                  <span>Last Scanned Name:</span>
                  <asp:TextBox ID="textbox_empname" runat="server" AutoPostBack="true" OnTextChanged="textbox_empname_TextChanged"></asp:TextBox>
                  <br />
                    <span>Last Scanned Surname :</span>
                  <asp:TextBox ID="textbox_empsurname" runat="server"></asp:TextBox>
                  <br />
                    <span>Last Scanned Employee ID :</span>
                  <asp:TextBox ID="textbox_empID" runat="server"></asp:TextBox>
                  <br />
                </div>
        <div class="col-4 text-center">
          <span>Current Status</span>
          <br />
          <span>Connected</span>
        </div>
        <div class="col-12 text-center">
          <a href="ManagementPanel_Page.aspx" class="btn btn-secondary"
            >Management Panel</a>
            <asp:Button ID="btn_scan_process" runat="server" Text="Start Scanning Process" class="btn btn-primary" OnClick="btn_scan_process_Click" />
          
        </div>
        
    
        <div class="col-12">
          <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="false">  
                <Columns>
                    <asp:BoundField DataField="empID" HeaderText ="Employee id" />
                    <asp:BoundField DataField="empName" HeaderText ="Employee name" />
                    <asp:BoundField DataField="empSurname" HeaderText ="Employee surname" />
                    <asp:BoundField DataField="CardID" HeaderText ="Card id" />
                </Columns>
              </asp:GridView>
        </div>
        
            
      </div>
    </div>
    <div class="container-fluid" style="width: 40%">
      <div class="row">
        <div class="col-12" style="border: 1px solid black; height: 100vh">
           <asp:GridView ID="gvRecords" runat="server" AutoGenerateColumns="false">  
                <Columns>               
                    <asp:BoundField DataField="emp_name" HeaderText ="Employee name" />
                    <asp:BoundField DataField="emp_surname" HeaderText ="Employee surname" />
                    <asp:BoundField DataField="snap_time" HeaderText ="ScanTime" />
                </Columns>
              </asp:GridView>

        </div>
      </div>
    </div>
      </form>
  </body>
  <script>
    $(document).ready(function () {
      $("#table_id").DataTable();
    });
  </script>
</html>

