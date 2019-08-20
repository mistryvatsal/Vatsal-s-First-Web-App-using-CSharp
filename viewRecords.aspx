<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewRecords.aspx.cs" Inherits="FirstWebApp.viewRecords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vatsal's First Web App in C# :P</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
</head>
<body>
    <div class="container text-center">
        <h2>Vatsal's First Web App in C# :P</h2>
        <br />
        <hr />
        <h4>The records of the database are as below</h4>
        <div class="text-center">
            <form id="gridform" runat="server" class="text-center">
                <asp:GridView ID="grid" runat="server" AutoGenerateColumns="false" CssClass="text-center table-bordered" HorizontalAlign="Center">
                <Columns>
                    <asp:BoundField DataField="user_name" HeaderText="User Name" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" />
                    <asp:BoundField DataField="time_stamp" HeaderText="Time Stamp" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"/>
                </Columns>
                </asp:GridView> 
            </form>  
        </div>
        <br />
        <div class="form-group">
            <button onclick="window.history.back()" class="btn btn-default btn-lg">Go Back</button>
        </div>
    </div>
</body>
</html>
