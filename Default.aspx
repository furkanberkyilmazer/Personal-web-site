<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<!DOCTYPE html>
<script runat="server">



</script>


<html lang="en">
  
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link
      href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900"
      rel="stylesheet"
    />
      <link rel="Shortcut Icon" href="assets\images\icon1.ico" type="image/x-icon">
    <title>furkanberkyilmazer.com</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-style.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/lightbox.css" />
    <link href="assets/css/StyleSheet1.css" type="text/css" rel="stylesheet"/>
  </head>

  <body>
    <div id="page-wraper">
      <!-- Sidebar Menu -->
      <div class="responsive-nav">
        <i class="fa fa-bars" id="menu-toggle"></i>
        <div id="menu" class="menu">
          <i class="fa fa-times" id="menu-close"></i>
          <div class="container">
            <div class="image">
                <asp:DataList ID="DataList3" runat="server" CssClass="container"  >
                       <ItemTemplate>

              <img src="<%#Eval("foto") %>" alt="" />
                              </ItemTemplate>
                </asp:DataList>
            </div>  
             
            <div class="author-content">
             
                  
            <h4> <asp:Literal ID="LiteralAdSoyad" runat="server"></asp:Literal>  </h4>
             <span>
                 <asp:Literal ID="LiteralUnvan" runat="server"></asp:Literal></span> 
               
            </div> 
            <nav class="main-nav" role="navigation">
              <ul class="main-menu">
                <li><a href="#section1">Hakkımda</a></li>
                <li><a href="#section2">Beceri ve Yetenekler</a></li>
                <li><a href="#section3">Projelerim</a></li>
                <li><a href="#section4">İletişim</a></li>
              </ul>
            </nav>
            <div class="social-network">
              <ul class="soial-icons">
               <!--
                   <li>
                  <a href="#" ><i class="fa fa-facebook"></i
                  
                  ></a>
                </li>
                   
                <li>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                </li>
                    <li>
                  <a href="#"><i class="fa fa-dribbble"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-rss"></i></a>
                </li>
                   /-->
                <li>
                  <a href="https://www.linkedin.com/in/furkan-berk-yılmazer-806092229/"><i class="fa fa-linkedin"></i></a>
                </li>
                <li>
                  <a href="https://www.instagram.com/furkanberkyilmazer/"><i class="fa fa-instagram"></i></a>
                </li>
                  <li>
                  <a href="https://github.com/furkanberkyilmazer"><i class="fa fa-github"></i></a>
                </li>
              </ul>
            </div>
            <div class="copyright-text">
              <p>Copyright 2022</p>
              
            </div>
          </div>
        </div>
      </div>

      <section class="section about-me" data-section="section1">
        <div class="container">
          <div class="section-heading">
            <h2>Hakkımda</h2>
            <div class="line-dec"></div>
            
              <div  style="text-align:left; line-height:25px;"> <span 
              ><b>
                  <asp:Literal ID="LiteralOzet" runat="server"></asp:Literal>
 </b></span></div>
          
          </div>
          
          <div class="left-image-post">
            <div class="row">
              <div class="col-md-6">
                <div>
                     &ensp; &ensp; &ensp; &ensp; &ensp;
                  <img src="assets/images/mezun.jpg"  height="350"/>
                </div>
              </div>
                <div class="col-md-6">
                <div class="right-text">
                    <h3>Eğitimlerim</h3>
                    
                <asp:DataList ID="DataList1" runat="server">
              
                  
                    <ItemTemplate>
                        <ul>
                            <li>
                  <p>                   
<%#Eval("okul") %> &ensp;-&ensp; <%#Eval("bolum") %>  <br />Başlangıç Tarihi &ensp;&ensp; Bitiş Tarihi  <br /><%#Eval("baslangicTarihi") %>&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;    <%#Eval("bitisTarihi") %>
                  </p>
                            </li>
                        </ul>
                 </ItemTemplate>
                   
                 </asp:DataList>
                </div>
              </div>
            </div>
          </div>
       </div>
      </section>

      <section class="section my-services" data-section="section2">
        <div class="container">
            
          <div class="section-heading">
            <h2>Beceri ve Yetenekler</h2>
            <div class="line-dec"></div>
           
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="service-item">
                <div class="first-service-icon service-icon"></div>
                <h4>Web Tasarım ve Web Programlama </h4>
                <p>
                 Bir Front-End Developer değilim ama bootstrap ile güzel şeyler elde edebilirim bunun dışında tasarım konusunda da bilgi sahibiyim. Programlama yönüne gelicek olursak bir çok proje gerçekleştirdim ve bu konuda iyi olduğumu söyleyebilirim.
                </p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="service-item">
                <div class="second-service-icon service-icon"></div>
                <h4>Programlama Dilleri</h4>
                <p>
                 C#,C, C++, Java, Asp.Net
                </p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="service-item">
                <div class="third-service-icon service-icon"></div>
                <h4>Veri Tabanı</h4>
                <p>
                 Bir çok projede veri tabanı tasarımını ve gerçekleştirmesini üstlendim. <br />
                    MS SQL&ensp;
MySQL
                </p>
              </div>
            </div>
            <!--<div class="col-md-6">
              <div class="service-item">
                <div class="fourth-service-icon service-icon"></div>
                <h4>Admin Dashboard</h4>
                <p>
                  Vivamus et dui a massa venenatis fringilla. Proin lacus massa,
                  eleifend sed fermentum in, dignissim vel metus. Nunc accumsan
                  leo nec felis porttitor.
                </p>
              </div>
            </div>
          </div> -->
        </div>
            </div>
      </section>

      <section class="section my-work" data-section="section3">
        <div class="container">
           
          <div class="section-heading">
            <h2>Projelerim</h2>
            <div class="line-dec"></div>
           
        

          </div>
            <div style="text-align:center">
               <asp:DataList ID="DataList2" runat="server" CssClass="container" >
                  <ItemTemplate>
            
           <h6 ><a href='ProjeDetay.aspx?projeId=<%#Eval("proje_id") %>'><br /> <%#Eval("projeAdi") %></h6> </a> 
           
                      </ItemTemplate>
              </asp:DataList>
             </div>
            


            
          <!--    <h5  style="text-align:center"><br />E-ticaret sitesinden birkaç görsel</h5>
          <div class="gallery cf">
  <div>
   <img src="assets\images\anasayfa.png" height="300" />
  </div>
  <div>
  <img src="assets\images\yenieklenenler.png"  height="300"/>
  </div>
  <div>
   <img src="assets\images\cinsiyet.png" height="300"/>
  </div>
  <div>
   <img src="assets\images\urundetay.png" height="300"/>
  </div>
  <div>
    <img src="assets\images\sepet.png"  />
  </div>
  <div>
   <img src="assets\images\adminpaneli1.png" />
  </div>
    <div>
   <img src="assets\images\adminpaneli2.png" />
  </div>
</div> 
             <br /> <br /> <br /> <br />
                <h5  style="text-align:center">Antrenman Takip Sisteminden birkaç görsel</h5>
 
          <div class="gallery cf">
  <div >
    <img  src="assets\images\giris.png" height="300" />
  </div>
  <div >
     <img src="assets\images\anaMenu.png"  height="300"/>
  </div>
  <div >
   <img src="assets\images\randevular.png" height="300"/>
  </div>
  <div>
    <img src="assets\images\randevusil.png" height="200" />
  </div>
  <div >
   <img src="assets\images\seans.png"height="200" />
  </div >
    <div>
   <img src="assets\images\üyeKayıt.png"height="200" />
  </div>
    <div >
       <img src="assets\images\sifredegistir3.png" />
  </div>
     <div >
    <img src="assets\images\uyeDetay.png" />
  </div>  
    <div >
   <img src="assets\images\yapilanisler.png"/>
  </div>
  
</div>-->
        


        </div>
      </section>

       <section class="section contact-me" data-section="section4">
        <div class="container">
          <div class="section-heading">
            <h2>Bana Mesaj At</h2>
            <div class="line-dec"></div>
            <span
              >Mailim (furkan_berk_yilmazer@hotmail.com) üzerinden veya aşağıdan bana ulaşabilirsiniz.</span
            >
          </div>
          <div class="row">
            <div class="right-content">
              <div class="container">
                <form id="contact" runat="server" method="post">
                  <div class="row">
                    <div class="col-md-6">
                      <fieldset>
                          <asp:TextBox ID="txtAd" runat="server" BackColor="Transparent" placeholder="Adınız..."></asp:TextBox>
                      </fieldset>
                    </div>
                    <div class="col-md-6">
                      <fieldset>
                        <asp:TextBox ID="txtMail" runat="server" BackColor="Transparent" placeholder="E-Posta Adresiniz..."></asp:TextBox>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                        <asp:TextBox ID="txtKonu" runat="server" BackColor="Transparent" placeholder="Konu..."></asp:TextBox>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                         <asp:TextBox ID="txtMesaj" runat="server" BackColor="Transparent" placeholder="Mesajınız..." TextMode="MultiLine"></asp:TextBox>
                      </fieldset>
                    </div>
                    <div class="col-md-12">
                      <fieldset>
                          <asp:Button ID="Button1" runat="server" Text="Gönder" BackColor="#5b1b30" OnClick="Button1_Click" />
                          <br />
                          <asp:Label ID="lblGoster" runat="server" Text=""></asp:Label>
                      </fieldset>
                    </div>
                  </div>
                </form>            
              </div>   
            </div>  
              
          </div>
        </div>
      </section>
    </div>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
      //according to loftblog tut
      $(".main-menu li:first").addClass("active");

      var showSection = function showSection(section, isAnimate) {
        var direction = section.replace(/#/, ""),
          reqSection = $(".section").filter(
            '[data-section="' + direction + '"]'
          ),
          reqSectionPos = reqSection.offset().top - 0;

        if (isAnimate) {
          $("body, html").animate(
            {
              scrollTop: reqSectionPos
            },
            800
          );
        } else {
          $("body, html").scrollTop(reqSectionPos);
        }
      };

      var checkSection = function checkSection() {
        $(".section").each(function() {
          var $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
          if (topEdge < wScroll && bottomEdge > wScroll) {
            var currentId = $this.data("section"),
              reqLink = $("a").filter("[href*=\\#" + currentId + "]");
            reqLink
              .closest("li")
              .addClass("active")
              .siblings()
              .removeClass("active");
          }
        });
      };

      $(".main-menu").on("click", "a", function(e) {
        e.preventDefault();
        showSection($(this).attr("href"), true);
      });

      $(window).scroll(function() {
        checkSection();
      });
    </script>
  </body>
</html>
