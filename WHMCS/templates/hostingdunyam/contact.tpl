

<div class="fw pageHeaderAll cover" style="background-image:url(templates/{$template}/assets/images/dash2.png)">
  <div class="container">
    <div class="fw pageHeader">
      <ul class="sul">
        <li class="icon"><span class="iconX"><i class="flaticon-email"></i></span></li>
        <li class="title"><h1 class="titleX">İletişim Bilgilerimiz</h1></li>
        <li class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eleifend blandit erat, vitae commodo quam!</li>
      </ul>
    </div><!--.pageHeader-->
  </div><!--.container-->
</div><!--.pageHeaderAll-->

<div class="container">
  <div class="fw pageAll">
    <div class="fw page contactPage">
      <div class="pageLeft contactPageLeft">
        <div class="fw pageLeftBox">
          <div class="fw simpleContentTitle">
            <h2 class="title">Firmamız Hakkında!</h2>
          </div><!--.title-->
          <div class="fw simpleContent">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eleifend blandit erat, vitae commodo quamLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eleifend blandit erat, vitae commodo quam., consectetur adipiscing elit. Nunc eleifend blandit erat, vitae commodo quam.</p>
          </div><!--.content-->
          <div class="fw simpleContentTitle orange-border">
            <h2 class="title">İletişim Bilgilerimiz</h2>
          </div><!--.title-->
          <div class="fw workTab">
          <div class="fw contactDetails">
              <div class="fw contactDetailsTab">
                <ul class="sul">
                  <li class="icon"><i class="flaticon-user-3"></i></li>
                  <li class="title">FİRMA ÜNVANI:</li>
                  <li class="desc">VENTURES TEKNOLOJİ</li>
                </ul>
              </div><!--.tab-->
              <div class="fw contactDetailsTab">
                <ul class="sul">
                  <li class="icon"><i class="flaticon-arroba"></i></li>
                  <li class="title">E-POSTA ADRESIMIZ:</li>
                  <li class="desc">info@ventures.com.tr</li>
                </ul>
              </div><!--.tab-->
              <div class="fw contactDetailsTab">
                <ul class="sul">
                  <li class="icon"><i class="flaticon-telephone"></i></li>
                  <li class="title">TELEFON NUMARAMIZ:</li>
                  <li class="desc">0 850 123 45 67</li>
                </ul>
              </div><!--.tab-->
              <div class="fw contactDetailsTab">
                <ul class="sul">
                  <li class="icon"><i class="flaticon-whatsapp-logo"></i></li>
                  <li class="title">WHATSAPP HATTIMIZ:</li>
                  <li class="desc">0 850 123 45 67</li>
                </ul>
              </div><!--.tab-->



              <div class="fw contactDetailsTab">
                <ul class="sul">
                  <li class="icon"><i class="flaticon-share"></i></li>
                  <li class="title">SOSYAL MEDYA HESAPLARIMIZ:</li>
                  <li class="social">
                    <a href="https://facebok.com/" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
                    <a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a>
                    <a href="https://youtube.com/" target="_blank"><i class="fab fa-youtube"></i></a>
                  </li>
                </ul>
              </div><!--.tab-->

              <div class="fw contactDetailsTab">
                <ul class="sul">
                  <li class="icon"><i class="flaticon-grid-world"></i></li>
                  <li class="title">ADRES:</li>
                  <li class="desc" style="font-size: 16px;" >Lorem ipsum dolor sit amet, consectetur adipiscing elit</li>
                </ul>
              </div><!--.tab-->

            </div><!--.contactDetails-->
          </div><!--.workTab-->
        </div><!--.left-->
      </div><!--.pageLeft-->
      <div class="pageRight contactPageRight">
        <div class="fw pageRightBox">
          <div class="fw simpleContentTitle">
            <h3 class="title">İletişim Formumuz</h3>
          </div><!--.title-->
          <div class="fw homeContactForm contactPageForm">

            {if $sent}
              {include file="$template/includes/alert.tpl" type="success" msg=$LANG.contactsent textcenter=true}
            {/if}

            {if $errormessage}
              {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
            {/if}

            {if !$sent}
            <form method="post" action="contact.php" class="form-horizontal" role="form">
            <input type="hidden" name="action" value="send" />
            <div class="homeContactFormRow">
              <div class="homeContactFormCol full">
                <div class="fw loginPageFormTabBox BoxTop10">
                  <span class="icon"><i class="flaticon-user-3"></i></span>
                  <span class="title">ADINIZ:</span>
                  <input type="text" name="name" value="{$name}" class="loginFormText white" id="inputName" placeholder="Adınız" />
                </div><!--.tabBox-->
              </div><!--.col-->
              <div class="homeContactFormCol full">
                <div class="fw loginPageFormTabBox BoxTop10">
                  <span class="icon"><i class="flaticon-user-3"></i></span>
                  <span class="title">E-POSTA:</span>
                  <input type="email" name="email" value="{$email}" class="loginFormText white" id="inputEmail" placeholder="adsoyad@gmail.com" />
                </div><!--.tabBox-->
              </div><!--.col-->
              <div class="homeContactFormCol full">
                <div class="fw loginPageFormTabBox BoxTop10">
                  <span class="icon"><i class="flaticon-telephone-1"></i></span>
                  <span class="title">BAŞLIK:</span>
                  <input type="subject" name="subject" value="{$subject}" class="loginFormText white" id="inputSubject" placeholder="Başlık" />
                </div><!--.tabBox-->
              </div><!--.col-->
              <div class="homeContactFormCol full">
                <div class="fw loginPageFormTabBox BoxTop10">
                  <span class="icon"><i class="flaticon-pencil"></i></span>
                  <span class="title">MESAJINIZ:</span>
                  <textarea  name="message" id="inputMessage" class="loginFormTextarea white" placeholder="Lütfen mesajınızı açıklayıcı biçimde detaylıca yazınız."></textarea>
                </div><!--.tabBox-->
              </div><!--.col-->
              <div class="homeContactFormCol full">
                <div class="fw homeContactFormBox submitContactFormBox">
                <input type="hidden" name="lang" value="tr">
                  <button type="submit" class="simpleButton largeX" style="width:100%; max-width:100%">MESAJI GÖNDER!<i id="contactIcon" class="flaticon-arrow-pointing-to-right"></i></button>

                </div><!--.box-->
              </div><!--.col-->
            </div><!--.row-->
          </form>
          {/if}
          </div><!--.homeContactForm-->
        </div><!--.pageRight-->
      </div><!--.pageRight-->
    </div><!--.page-->
  </div><!--.pageAll-->
</div><!--.container-->
