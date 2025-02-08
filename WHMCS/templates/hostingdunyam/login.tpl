
<div class="fw pageHeaderAll cover" style="background-image:url(templates/{$template}/assets/images/dash2.png)">
  <div class="container">
    <div class="fw pageHeader">



<div class="container">
    <div class="loginBox wow fadeInUp" style=" ">
      <div class="fw loginBoxDiv">
        <div class="fw loginBoxForm">
          <div class="fw loginPageTitle">
            <ul class="sul">
              <li class="title">Müşteri Girişi</li>
            </ul>
          </div><!--.loginPageTitle-->
          <form id="loginForm" method="post" action="{$systemurl}dologin.php" role="form">


          <div class="fw loginPageForm">
                        {if $incorrect}
                  {include file="$template/includes/alert.tpl" type="error" msg=$LANG.loginincorrect textcenter=true}
              {elseif $verificationId && empty($transientDataName)}
                  {include file="$template/includes/alert.tpl" type="error" msg=$LANG.verificationKeyExpired textcenter=true}
              {elseif $ssoredirect}
                  {include file="$template/includes/alert.tpl" type="info" msg=$LANG.sso.redirectafterlogin textcenter=true}
              {elseif $invalid}
                  {include file="$template/includes/alert.tpl" type="error" msg=$LANG.googleRecaptchaIncorrect textcenter=true}
              {/if}
            <div class="fw loginPageFormTab">
              <div class="fw loginPageFormTabBox BoxTop10">
                <span class="icon"><i class="flaticon-arroba"></i></span>
                <span class="title">E-Posta</span>
                <input type="email" name="username" class="loginFormText" id="inputEmail" placeholder="{$LANG.enteremail}" autofocus>
              </div><!--.tabBox-->
            </div><!--.tab-->
            <div class="fw loginPageFormTab">
              <div class="fw loginPageFormTabBox BoxTop10">
                <span class="icon"><i class="flaticon-key"></i></span>
                <span class="title">Şifre:</span>
                <input type="password" name="password" class="loginFormText" id="inputPassword" placeholder="{$LANG.clientareapassword}" autocomplete="off" >
              </div><!--.tabBox-->
            </div><!--.tab-->
            <div class="fw loginPageFormTab">
              <div class="fw loginPageCheckbox">
                <ul>
                  <li><span class="checkbox-icon"><input type="checkbox" name="checkboxG1" id="checkboxG1" class="css-checkbox" />
                    <label for="checkboxG1" class="css-label"></label></span>
                    <span class="title">Beni Hatırla</span>
                    <a href="pwreset.php" class="forget">Şifremi Unuttum! </a></li>
                </ul>
              </div><!--.checkbox-->
            </div><!--.tab-->
                            {if $captcha->isEnabled()}
                    <div class="text-center margin-bottom">
                        {include file="$template/includes/captcha.tpl"}
                    </div>
                {/if}
            <div class="fw loginPageFormTab">
              <div class="fw loginPageFormSubmit">
              <button type="submit" class="simpleButton xLargeX">Hesabıma Giriş Yap! <i class="flaticon-arrow-pointing-to-right"></i></a>
              </div><!--.submit-->
            </div><!--.tab-->
            <div class="fw loginPageFormTab">
              <div class="fw loginPageFormSubmit">
                <a href="register.php" class="simpleButton orangeX smallX">Hesap Oluştur <i class="flaticon-arrow-pointing-to-right"></i></a>
              </div><!--.submit-->
            </div><!--.tab-->
          </div><!--.loginPageForm-->
          </form>
        </div><!--.form-->
      </div><!--.loginBoxDiv-->
    </div><!--.loginBox-->
  </div><!--.container-->    </div><!--.pageHeader-->
  </div><!--.container-->
</div>
