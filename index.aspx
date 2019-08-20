<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FirstWebApp.index" %>

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
        <form id="form1" runat="server" class="form-inline">
            <div class="form-group">
                <label>Enter your name : </label>
                <asp:TextBox ID="user_name" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="submitButton" runat="server" Text="Submit" PostBackUrl="~/ack.aspx" CssClass="btn btn-primary" />
            </div>
            <hr />
            <asp:Button ID="view_records_btn" runat="server" Text="View Records" PostBackUrl="~/viewRecords.aspx" CssClass="btn btn-default btn-lg" />
        </form>    
    </div>
    
</body>
</html>
