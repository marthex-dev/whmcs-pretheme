<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>

<!-- Styling -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600|Raleway:400,700" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/all.min.css?v={$versionHash}" rel="stylesheet">
<link href="{$WEB_ROOT}/assets/css/fontawesome-all.min.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/css/custom.css" rel="stylesheet">


<link href="{$WEB_ROOT}/templates/{$template}/assets/css/owl.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/assets/css/animate.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/assets/fonts/flaticon.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/assets/css/style.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/assets/css/custom.css" rel="stylesheet">
<link href="{$WEB_ROOT}/templates/{$template}/assets/fonts/stylesheet.css" rel="stylesheet">
<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">



<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script type="text/javascript">
    var csrfToken = '{$token}',
        markdownGuide = '{lang key="markdown.title"}',
        locale = '{if !empty($mdeLocale)}{$mdeLocale}{else}en{/if}',
        saved = '{lang key="markdown.saved"}',
        saving = '{lang key="markdown.saving"}',
        whmcsBaseUrl = "{\WHMCS\Utility\Environment\WebHelper::getBaseUrl()}",
        requiredText = '{lang key="orderForm.required"}',
        recaptchaSiteKey = "{if $captcha}{$captcha->recaptcha->getSiteKey()}{/if}";
</script>
<script src="{$WEB_ROOT}/templates/{$template}/js/scripts.min.js?v={$versionHash}"></script>

{if $templatefile == "viewticket" && !$loggedin}
  <meta name="robots" content="noindex" />
{/if}


    {$headoutput}

</head>
<body>

{$headeroutput}
  <header>
    <div class="fw headerAll nav-down">
      <div class="fw headerTopAll">
        <div class="container">
          <div class="fw headerTop">
            <div class="headerTopLeft">
              <div class="headerTopLang">
                <a href="#"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/tr.png" alt="tr" /></a>
              </div><!--.headerTopLang-->
              <div class="headerTopLeftMenu">
                <ul>
                  <li><a href="#"><i class="flaticon-headset textX greenX"></i>CANLI DESTEK</a></li>
                  <li><a href="#"><i class="flaticon-telephone textX greenX"></i>0 850 123 45 67</a></li>
                </ul>
              </div><!--.headerTopLeftMenu-->
            </div><!--.headertopLeft-->
            <div class="headerTopRight">
              <ul>
                {if !$loggedin}
                <li><a href="cart.php?a=view"><i class="far fa-shopping-cart textX greenX"></i>SEPETİM </a></li>
                <li><a href="clientarea.php"><i class="flaticon-user-3 textX greenX"></i>GİRİŞ YAP</a></li>
                <li><a href="register.php"><i class="flaticon-add textX greenX"></i>KAYIT OL</a></li>
                {else}
                <li><a href="cart.php?a=view"><i class="far fa-shopping-cart textX greenX"></i>SEPETİM</a></li>
                <li><a href="clientarea.php"><i class="flaticon-user-3 textX greenX"></i>MÜŞTERİ PANELİ</a></li>
                <li>
                    <a href="#" data-toggle="popover" id="accountNotifications" data-placement="bottom">
                        <i class="fas fa-bell textX greenX"></i> BİLDİRİMLER
                        {if count($clientAlerts) > 0}
                            <span class="label label-info">{lang key='notificationsnew'}</span>
                        {/if}
                        <b class="caret"></b>
                    </a>
                    <div id="accountNotificationsContent" class="hidden">
                        <ul class="client-alerts">
                        {foreach $clientAlerts as $alert}
                            <li>
                                <a href="{$alert->getLink()}">
                                    <i class="fas fa-fw fa-{if $alert->getSeverity() == 'danger'}exclamation-circle{elseif $alert->getSeverity() == 'warning'}exclamation-triangle{elseif $alert->getSeverity() == 'info'}info-circle{else}check-circle{/if}"></i>
                                    <div class="message">{$alert->getMessage()}</div>
                                </a>
                            </li>
                        {foreachelse}
                            <li class="text-center" style="text-align: center">
                              <br>
                                {$LANG.notificationsnone}
                            </li>
                        {/foreach}
                        </ul>
                    </div>
                </li>
                <li><a href="logout.php"><i class="far fa-sign-out textX greenX"></i>ÇIKIŞ YAP</a></li>

                {/if}
                {if $adminMasqueradingAsClient || $adminLoggedIn}
                  <li>
                      <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" data-toggle="tooltip" data-placement="bottom" title="{if $adminMasqueradingAsClient}{$LANG.adminmasqueradingasclient} {$LANG.logoutandreturntoadminarea}{else}{$LANG.adminloggedin} {$LANG.returntoadminarea}{/if}">
                          <i class="far fa-cogs textX greenX"></i> YÖNETİM PANELİ
                      </a>
                  </li>
                {/if}
              </ul>
            </div><!--.headerTopRight-->
          </div><!--.headerTop-->
        </div><!--.container-->
      </div><!--.headerTopAll-->
      <div class="fw headerBotAll">
        <div class="container">
          <div class="fw headerBot">
            <div class="logo">
              <a href="/"><img src="{$WEB_ROOT}/templates/{$template}/assets/images/logo.png" alt="logo" style=" width: 190px; "/></a>
            </div><!--.logo-->
            <span class="responsiveMenu" style="z-index:123"><i class="fas fa-bars"></i></span>
            <div class="headerMenu">
              <nav>
                <ul>
                  <li><a href="cart.php?a=add&domain=register">ALAN ADI</a></li>
                  <li class="has-small-menu"><a href="#">HOSTING</a>
                      <div class="fw subMenu smallMenu">
                          <div class="fw smallMenuBox">
                              <ul>
                                  <li><a href="hosting">Web Hosting</a></li>
                                  <li><a href="wordpress">WordPress Hosting</a></li>

                              </ul>
                          </div>
                      </div>
                  </li>
                  <li><a href="mail">E-MAİL</a></li>
                  <li><a href="ssl">SSL</a></li>
                  <li class="has-small-menu"><a href="#">SERVER</a>
                      <div class="fw subMenu smallMenu">
                          <div class="fw smallMenuBox">
                              <ul>
                                  <li><a href="dedicated">Dedicated Server</a></li>
                                  <li><a href="vds">VPS/VDS Server</a></li>

                              </ul>
                          </div>
                      </div>
                  </li>

                  <li><a href="#">DİĞER HİZMETLERİMİZ</a>
                    <div class="fw subMenu">
                      <div class="fw subMenuBox">
                        <div class="container">
                          <div class="fw subMenuBoxDiv">
                            <div class="subMenuBoxLeft">
                              <div class="fw subMenuBoxLeftDiv">
                                <ul class="sul">
                                  <li class="icon"><span class="iconX"><i class="fas fa-server"></i></span></li>
                                  <li class="title">Çoklu Menü</li>
                                  <li class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                                </ul>
                              </div><!--.div-->
                            </div><!--.left-->
                            <div class="subMenuBoxRight">
                              <div class="fw subMenuBoxRightDiv">
                                <div class="subMenuRow">
                                  <div class="subMenuCol">
                                    <div class="fw subMenuColBox">
                                      <div class="fw subMenuBoxTitle">
                                        <span class="title">Linux Hosting</span>
                                      </div><!--.title-->
                                      <div class="fw subMenuList">
                                        <ul>
                                          <li><a href="#">Linux Hosting</a></li>
                                          <li><a href="#">Kurumsal Hosting</a></li>
                                          <li><a href="#">Bayi ( Reseller ) Hosting</a></li>
                                        </ul>
                                      </div><!--.list-->
                                    </div><!--.subMenuColBox-->
                                  </div><!--.col-->
                                  <div class="subMenuCol">
                                    <div class="fw subMenuColBox">
                                      <div class="fw subMenuBoxTitle">
                                        <span class="title">Windows Hosting</span>
                                      </div><!--.title-->
                                      <div class="fw subMenuList">
                                        <ul>
                                          <li><a href="#">Windows Hosting</a></li>
                                          <li><a href="#">Kurumsal Hosting</a></li>
                                          <li><a href="#">Bayi ( Reseller ) Hosting</a></li>
                                        </ul>
                                      </div><!--.list-->
                                    </div><!--.subMenuColBox-->
                                  </div><!--.col-->
                                  <div class="subMenuCol">
                                    <div class="fw subMenuColBox">
                                      <div class="fw subMenuBoxTitle">
                                        <span class="title">Developer Hosting</span>
                                      </div><!--.title-->
                                      <div class="fw subMenuList">
                                        <ul>
                                          <li><a href="#">WordPress Hosting</a></li>
                                          <li><a href="#">Joomla Hosting</a></li>
                                          <li><a href="#">Drupal Hosting</a></li>
                                        </ul>
                                      </div><!--.list-->
                                    </div><!--.subMenuColBox-->
                                  </div><!--.col-->
                                  <div class="subMenuCol">
                                    <div class="fw subMenuColBox">
                                      <div class="fw subMenuBoxTitle">
                                        <span class="title">Sanal Sunucu</span>
                                      </div><!--.title-->
                                      <div class="fw subMenuList">
                                        <ul>
                                          <li><a href="#">VPS Sunucu</a></li>
                                          <li><a href="#">VDS Sunucu</a></li>
                                          <li><a href="#">Cloud Sunucu</a></li>
                                        </ul>
                                      </div><!--.list-->
                                    </div><!--.subMenuColBox-->
                                  </div><!--.col-->
                                  <div class="subMenuCol">
                                    <div class="fw subMenuColBox">
                                      <div class="fw subMenuBoxTitle">
                                        <span class="title">Verimerkezi</span>
                                      </div><!--.title-->
                                      <div class="fw subMenuList">
                                        <ul>
                                          <li><a href="#">Kiralık Sunucu</a></li>
                                          <li><a href="#">Sunucu Barındırma</a></li>
                                          <li><a href="#">DDoS Korumalı Sunucu</a></li>
                                        </ul>
                                      </div><!--.list-->
                                    </div><!--.subMenuColBox-->
                                  </div><!--.col-->
                                  <div class="subMenuCol">
                                    <div class="fw subMenuColBox">
                                      <div class="fw subMenuBoxTitle">
                                        <span class="title">E-Ticaret Hosting</span>
                                      </div><!--.title-->
                                      <div class="fw subMenuList">
                                        <ul>
                                          <li><a href="#">Opencart Ticaret Hosting</a></li>
                                          <li><a href="#">Özel E-Ticaret Hosting</a></li>
                                        </ul>
                                      </div><!--.list-->
                                    </div><!--.subMenuColBox-->
                                  </div><!--.col-->
                                </div><!--.row-->
                              </div><!--.div-->
                            </div><!--.right-->
                          </div><!--.div-->
                        </div><!--.container-->
                      </div><!--.subMenuBox-->
                    </div><!--.subMenu-->
                  </li>
                  <li class="has-small-menu"><a href="#">HAKKIMIZDA</a>
                      <div class="fw subMenu smallMenu">
                          <div class="fw smallMenuBox">
                              <ul>
                                  <li><a href="hakkimizda">Hakkımızda</a></li>
                                  <li><a href="banka">Banka Hesaplarımız</a></li>
                                  <li><a href="hizmet-sozlesmesi">Hizmet Sözleşmesi</a></li>
                                  <li><a href="contact.php">İletişim Bilgilerimiz</a></li>

                              </ul>
                          </div>
                      </div>
                  </li>
                </ul>
              </nav>
            </div><!--.headerMenu-->
          </div><!--.headerBot-->
        </div><!--.container-->
      </div><!--.botall-->
    </div><!--.headerAll-->
  </header>
  <div class="newMobile">
    <div class="fw newMobileBox">
      <div class="newMobileClose"><i class="flaticon-close"></i></div>
      <div class="fw newMobileHeader">
        <ul>
          <li class="blue"><a href="clientarea.php"><span class="icon"><i class="flaticon-user-3"></i></span><span class="title">GİRİŞ YAP</span></a></li>
          <li class="pink"><a href="register.php"><span class="icon"><i class="flaticon-window"></i></span><span class="title">HESAP OLUŞTUR</span></a></li>
        </ul>
      </div><!--.newMobileHeader-->
      <div class="fw newMobileMenu">
        <nav>
          <ul>
            <li><a href="#">Alan Adı</a></li>
            <li><a href="#">Web Hosting <i class="fas fa-chevron-down"></i></a>
              <ul>
                <li><a href="#">Linux Web Hosting</a></li>
                <li><a href="#">Linux Web Hosting</a></li>
                <li><a href="#">Linux Web Hosting</a></li>
                <li><a href="#">Linux Web Hosting</a></li>
                <li><a href="#">Linux Web Hosting</a></li>
                <li><a href="#">Linux Web Hosting</a></li>
              </ul>
            </li>
            <li><a href="#">Reseller Hosting <i class="fas fa-chevron-down"></i></a>
              <ul>
                <li><a href="#">Linux Reseller Hosting</a></li>
                <li><a href="#">Linux Reseller Hosting</a></li>
                <li><a href="#">Linux Reseller Hosting</a></li>
                <li><a href="#">Linux Reseller Hosting</a></li>
                <li><a href="#">Linux Reseller Hosting</a></li>
                <li><a href="#">Linux Reseller Hosting</a></li>
              </ul>
            </li>
            <li><a href="#">İletişim</a></li>
          </ul>
        </nav>
      </div><!--.menu-->
      <div class="fw newMobileButtons">
        <ul>
          <li><a href="#"><i class="flaticon-headset"></i>CANLI DESTEK</a></li>
          <li><a href="#"><i class="flaticon-telephone"></i>0 850 123 45 67</a></li>
        </ul>
      </div><!--.buttons-->
    </div><!--.newMobileBox-->
  </div><!--.newMobile-->
