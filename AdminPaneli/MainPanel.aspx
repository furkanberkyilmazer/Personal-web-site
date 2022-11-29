<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Site1.Master" AutoEventWireup="true" CodeBehind="MainPanel.aspx.cs" Inherits="WebApplication1.AdminPaneli.MainPanel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>furkanberkyilmazer.com - Kişisel İşlemler</title>
  <link rel="stylesheet" href="./style.css">

    <style type="text/css">
        .auto-style1 {
            height: 22px;
            width: 5px;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            width: 11px;
        }
        .auto-style4 {
            height: 22px;
            width: 11px;
        }
        .auto-style5 {
            height: 60px;
            width: 11px;
        }
        .auto-style8 {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
        <br />
               
      
        <br />       <br />
       
        <div> Kisisel İşlemler<br />
         
        <table class="style1" >
             <tr>
                    <td >
                    <asp:Image ID="Image1"  runat="server" Height="240px" Width="202px" />
                    </td>
                
                   
                </tr>

                <tr>
                    <td class="auto-style2">
                       Ad Soyad:</td>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000" class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                
                   
                </tr>
                <tr>
                    <td class="auto-style2">
                        Ünvan:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    
                     
                </tr>
                <tr>
                    <td>
                        Kullanıcı Adı:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                  
                    
                </tr>
                <tr>
                    <td>
                        Şifre:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                   
                   
                </tr>
              
                  <tr>
                    <td class="auto-style8">
                       Özet Bilgi:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox5" runat="server" Height="96px" Width="426px" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
                    
                    

                </tr>
                         <tr>
                    <td>
                        Fotoğraf:</td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; " class="auto-style1">
                         &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style4">
                      
                        <asp:Button ID="Button1" runat="server" Text="Güncelle" OnClick="Button1_Click" />
                      
                    </td>
                     
                </tr>
            </table>

        </div> <br /><br /><br /><br />
         <div>Eğitim Bilgileri <br />
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                    <table>
                        <tr>
                                 <td>
                                 <%#Eval("okul") %>

                                  </td>
                             <td>
                                 <%#Eval("bolum") %>

                                  </td>
                               <td>
                                 <%#Eval("baslangicTarihi") %>

                                  </td>
                               <td>
                                 <%#Eval("bitisTarihi") %>

                                  </td>
                        
                        </tr>
                          

                    </table>
                </ItemTemplate>

            </asp:DataList>
        </div>
        &nbsp;&nbsp; &nbsp;&nbsp;<br /><br /><br /><br /><div > Proje İşlemleri &nbsp;&nbsp;&nbsp;&nbsp;<a href=ProjectEkle.aspx> Proje Ekle</a>
            <br />
         <br />
           <asp:DataList ID="DataList1" runat="server"> 
                <ItemStyle />
                <ItemTemplate>
                    <table class="style1">
                        <tr>
                          
                            <td>
                                   <%#Eval("ProjeAdi") %>
                                 
                            </td>                              
                        </tr>
                        <tr>
                            <td>
<a href='ProjectDuzenle.aspx?projeId=<%#Eval("proje_id") %>'>Düzenle</a> <a href='MainPanel.aspx?projeId=<%#Eval("proje_id") %>&islem=sil'> Sil </a>

                            </td> 
                        </tr>
                        
                    </table>
                     
                </ItemTemplate></asp:DataList>
            <br />
            <br />
            
                                   
                                
       
       </div>

       



</asp:Content>
