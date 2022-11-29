<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.AdminPaneli.Login" %>

<html lang="en" >
<head>
  <meta charset="UTF-8">
    <link rel="Shortcut Icon" href="assets\images\icon1.ico" type="image/x-icon">
  <title>Login</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>

   
<!-- partial:index.partial.html -->
<form autocomplete='off' class='form' runat="server">
  <div class='control'>
    <h1>
        Log In</h1>
  </div>
 
  <div class='credits'>
   
     Furkan Berk Yılmazer
    
  </div>
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" LoginButtonText="Log In" TitleText="" ></asp:Login>
</form>
<!-- partial -->
  
</body>
</html>
