<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Site1.Master" AutoEventWireup="true" CodeBehind="ProjectDuzenle.aspx.cs" Inherits="WebApplication1.AdminPaneli.ProjectDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>furkanberkyilmazer.com - Proje Düzenle</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                           <a href='ProjectDuzenle.aspx?projeFoto=<%#Eval("projeFoto") %>&islem=sil'> Sil </a>
                  </td>
             
            </tr>
                                  


                             

                         </ItemTemplate>

                     </asp:DataList>
             

        </div>
</asp:Content>
