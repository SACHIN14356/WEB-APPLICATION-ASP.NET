<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            text-align:center;
            margin-top:10rem;
            font-size:2rem;
            padding-bottom:10px;
        } 
       
        form{
            border:solid;
             margin-left:30%;
             margin-right:30%;
             padding-bottom:10px;
        }
           div{
            padding:5px;
           }
           btn-login{
            margin-left:15%;
   }
    </style>
    
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="login Form " ForeColor="#FF5050"></asp:Label>

        </div>
        <div> 
            <asp:Label ID="label2" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="35px" ></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="label3" runat="server" Text="password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="35px"></asp:TextBox>
           

        </div>
        <input type="checkbox" onchange="document.getElementById('TextBox2').type=this.checked? 'text': 'password" /> 'Showpassword"
        <div>
            <asp:Button CssClass="btn btn-login" ID="Button1" runat="server" Text="Login" ForeColor="white"  BackColor="#33CC33" Height="30px" Width="80px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel"  ForeColor="white" BackColor="Red"  Height="30px" Width="80px" />
        </div>
    </form>
</body>
</html>
