{if $templatefile != "clientareahome" && $templatefile != "downloads" && $templatefile != "announcements" && $templatefile != "viewannouncement" && $templatefile != "knowledgebase" && $templatefile != "knowledgebasecat" && $templatefile != "knowledgebasearticle"}

               </div><!-- /.main-content -->
               {if !$inShoppingCart && $secondarySidebar->hasChildren()}
                   <div class="col-md-3 pull-md-left sidebar sidebar-secondary">
                       {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
                   </div>
               {/if}
           <div class="clearfix"></div>
       </div>
   </div>
</section>
{/if}
</div></div></div> </div></div></div> </div></div></div><footer>
    <div class="top container">
      <div>
        <div>
          <a href="/">
            <img src="{$WEB_ROOT}/templates/{$template}/assets/images/logo.png" alt="logo">
          </a>
        </div>
        <div>
          <a href="#">0850 123 456</a>
        </div>
      </div>
    </div>
    <div class="center">
      <div class="container">
        <div class="menu">
          <div>
            <div>
              <strong><em>Alan Adı</em></strong>
              <ul>
                <li><a href="#">Alan Adı Tescil</a></li>
                <li><a href="#">Alan Adı Transfer</a></li>
                <li><a href="#">Whois sorgulama</a></li>
              </ul>
            </div>
            <div>
              <strong><em class="purple">Web Hosting</em></strong>
              <ul>
                <li><a href="#">Alan Adı Tescil</a></li>
                <li><a href="#">Alan Adı Transfer</a></li>
                <li><a href="#">Whois sorgulama</a></li>
              </ul>
            </div>
            <div>
              <strong><em class="darkBlue">Sunucu</em></strong>
              <ul>
                <li><a href="#">Alan Adı Tescil</a></li>
                <li><a href="#">Alan Adı Transfer</a></li>
                <li><a href="#">Whois sorgulama</a></li>
              </ul>
            </div>
            <div>
              <strong><em class="blue">E-Mail</em></strong>
              <ul>
                <li><a href="#">Alan Adı Tescil</a></li>
                <li><a href="#">Alan Adı Transfer</a></li>
                <li><a href="#">Whois sorgulama</a></li>
              </ul>
            </div>
            <div>
              <strong><em class="ligthBlue">SSL</em></strong>
              <ul>
                <li><a href="#">Alan Adı Tescil</a></li>
                <li><a href="#">Alan Adı Transfer</a></li>
                <li><a href="#">Whois sorgulama</a></li>
              </ul>
            </div>
            <div>
              <strong><em class="orange">Kurumsal</em></strong>
              <ul>
                <li><a href="#">Alan Adı Tescil</a></li>
                <li><a href="#">Alan Adı Transfer</a></li>
                <li><a href="#">Whois sorgulama</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="sub">
          <div>
            <strong>SOSYAL MEDYA'DA BİZ</strong>
            <ul>
              <li><a href="#" class="facebook"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/facebook-icon.svg" alt="facebook"></a></li>
              <li><a href="#" class="twitter"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/twitter-icon.svg" alt="twitter"></a></li>
              <li><a href="#" class="linkedin"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/linkedin-icon.svg" alt="linkedin"></a></li>
              <li><a href="#" class="instagram"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/instagram-icon.svg" alt="instagram"></a></li>
              <li><a href="#" class="youtube"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/youtube-icon.svg" alt="youtube"></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="bottom container">
      <div>
        <ul>
          <li><a href="#">Hizmet Sözleşmesi</a></li>
          <li><a href="#">Gizlilik Politikası</a></li>
          <li><a href="#">İletişim</a></li>
        </ul>
        <p>Tüm Hakları Saklıdır. Ventures Teknoloji</p>
      </div>
    </div>
 </footer>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="{$WEB_ROOT}/templates/{$template}/assets/js/owl.carousel.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="{$WEB_ROOT}/templates/{$template}/assets/js/wow.js"></script>
  <script src="{$WEB_ROOT}/templates/{$template}/assets/js/site.js"></script>
  <script src="{$WEB_ROOT}/templates/{$template}/assets/js/custom.js"></script>

  <script>
    $('#home .happyCustomer .owl-carousel').owlCarousel({
      loop:true,
      responsiveClass:true,
      dots:true,
      margin:20,
      responsive:{
          0:{
              items:1
          },
          768:{
              items:2
          },
          1200:{
              items:3
          }
      }
    });
    $('#home .price .owl-carousel').owlCarousel({
      loop:true,
      responsiveClass:true,
      dots:true,
      margin:16,
      responsive:{
          0:{
              items:2
          },
          768:{
              items:4
          },
          992:{
              items:5
          },
          1200:{
              items:6
          }
      }
    });
  </script>
  </body>
</html>
