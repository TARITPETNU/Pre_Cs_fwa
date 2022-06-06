<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="firstWebApp.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /* Add a black background color to the top navigation */
        .topnav {
          background-color: #333;
          overflow: hidden;
        }

        /* Style the links inside the navigation bar */
        .topnav a {
          float: left;
          color: #f2f2f2;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }

        /* Change the color of links on hover */
        .topnav a:hover {
          background-color: #ddd;
          color: black;
        }

        /* Add a color to the active/current link */
        .topnav a.active {
          background-color: #04AA6D;
          color: white;
        }
        .auto-style2 {
            width: 77px;
            height: 28px;
            margin-left: 0px;
        }
        .auto-style3 {
            width: 54px;
        }
        .auto-style4 {
            margin-bottom: 0px;
        }
        .auto-style5 {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            width: 274px;
            left: 0px;
            top: 0px;
        }
    </style>
    <link href="/Content/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <div class="topnav">
      <a class="active" href="#home">Home</a>
      <a href="#news" class="auto-style3">News</a>
      <a href="#contact">Contact</a>
      <a href="#about">About</a><br />
&nbsp;<br />
    </div>
    <div class="auto-style5">
      <asp:Image class="card-img-top" ID="Image1" runat="server" CssClass="auto-style4" Height="182px" ImageUrl="~/pic/aaaaaaa.PNG" Width="263px" ImageAlign="Middle"  />
      <div class="card-body" style="text-align: center">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
    <form id="form1" runat="server">
        <p class="auto-style2" style="display:inline">
            &nbsp;ปีค.ศ
        </p>&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Button class="btn btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
        
    </form>
</body>
    <script>
        /*$(document).ready(function () {
            console.log("test")
        });*/
    </script>
</html>
