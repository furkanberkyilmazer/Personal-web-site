<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPaneli/Site1.Master" AutoEventWireup="true" CodeBehind="ProjectEkle.aspx.cs" Inherits="WebApplication1.AdminPaneli.ProjectEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>furkanberkyilmazer.com - Proje Ekle</title>
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
                     
        <table class="style1" >
           
                <tr>
                    <td 
                        width="200px" class="auto-style1">
                        Proje Adı:</td>
                    <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000" class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                
                   
                </tr>
          
              
                  <tr>
                    <td style="height: 60px">
                        Proje Açıklama:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox2" runat="server" Height="96px" Width="426px" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</td>
                    
                    

                </tr>
                         <tr>
                    <td>
                        Fotoğraf:</td>
                    <td class="auto-style3">
                        <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
                    </td>
                     <td style="font-family: Arial, Helvetica, sans-serif; font-weight: bold; color: #FF0000; " class="auto-style1">
                         &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style4">
                      
                        <asp:Button ID="Button1" runat="server" Text="Ekle" OnClick="Button1_Click" />
                      
                    </td>
                     
                </tr>
            </table>
        </div>
</asp:Content>
