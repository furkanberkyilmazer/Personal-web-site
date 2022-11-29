<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjeDetay.aspx.cs" Inherits="WebApplication1.ProjeDetay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="Shortcut Icon" href="assets\images\icon1.ico" type="image/x-icon">
    <title>furkanberkyilmazer.com</title>
    <style>
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 600px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
  float: left;
}

div.desc {
  padding: 15px;
  text-align: center;
  float: left;
}
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #AA0441;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #494848;
}

.active {
  background-color:#808080;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
</style>
</head>
<body style="background-color:darkgrey">
    <form id="form1" runat="server">
        <div>
            <div class="navbar">
  <a  href="Default.aspx"><i class="fa fa-fw fa-home"></i> furkanberkyilmazer.com</a> 
  <a class="active"><i class="fa fa-fw fa-search"></i> Proje Detay</a> 
 
</div>
            <div align="center">
                <table>
                    <tr>
<br /> 
                        <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large" Font-Bold="True"></asp:Label>

                    </tr>
                   
                     <tr>
 <br /><br />
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

                    </tr>
                </table>

                
            </div>
        </div>
        <div align="center">
            <br /> <br /> <br />
                <asp:DataList ID="DataList1" runat="server"><ItemTemplate>  
            <div class="gallery" >
  <a target="_blank">
    <img src="<%#Eval("projeFoto") %>" alt="" />
  </a>
 <!-- <div class="desc">Add a description of the image here</div> -->
</div>
</ItemTemplate></asp:DataList>


        </div>
    </form>
</body>
</html>
