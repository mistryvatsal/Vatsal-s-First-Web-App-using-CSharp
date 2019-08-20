<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ack.aspx.cs" Inherits="FirstWebApp.ack" %>

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
        <h4>
            <asp:Label ID="label_username" runat="server"></asp:Label>
        </h4>
        <br />
        <hr />
        <div class="form-group">
            <button onclick="window.history.back()" class="btn btn-default btn-lg">Go Back</button>
        </div>
        
    </div>
    
</body>
</html>
