<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjeDuzenle.aspx.cs" Inherits="WebApplication1.AdminPaneli.ProjeDuzenle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                       

                    </td>
                     <td>
                          &nbsp;&nbsp;&nbsp;
                          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td>
                        Proje Adı: 

                    </td>
                     <td>
                          &nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        Açıklama: 

                    </td>
                     <td>
                          &nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="TextBox2" runat="server" Height="63px" TextMode="MultiLine" Width="376px"></asp:TextBox>

                    </td></tr>
                 <tr>   <td>
                       
                     Resim:
                    </td>
                     
                     <td>&nbsp;&nbsp;&nbsp;
                         <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />

                    </td>

            </tr>
                <tr>     <td>
                       

                    </td>
                     <td>
                          &nbsp;&nbsp;&nbsp;
                          <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" />

                    </td>
                </tr>
                 </table>
            <asp:DataList ID="DataList1" runat="server">
                         <ItemTemplate>
                             
                               <tr>
                  <td> <asp:Image ID="Image1" runat="server" Width="400px" Height="400px" ImageUrl='<%#Eval("projeFoto") %>' />
                     
                  </td>
                    <td>  
                           <a href='ProjeDuzenle.aspx?projeFoto=<%#Eval("projeFoto") %>&islem=sil'> Sil </a>
                  </td>
             
            </tr>
                                  


                             

                         </ItemTemplate>

                     </asp:DataList>
             

        </div>
    </form>
</body>
</html>
