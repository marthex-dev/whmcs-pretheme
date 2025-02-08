    {if in_array('state', $optionalFields)}
        <script>
            var statesTab = 10;
            var stateNotRequired = true;

        </script>
    {/if}
    <script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
    <script type="text/javascript" src="{$BASE_PATH_JS}/register.js"></script>
    <script>
        window.langPasswordStrength = "{$LANG.pwstrength}";
        window.langPasswordWeak = "{$LANG.pwstrengthweak}";
        window.langPasswordModerate = "{$LANG.pwstrengthmoderate}";
        window.langPasswordStrong = "{$LANG.pwstrengthstrong}";
        jQuery(document).ready(function()
        {
            jQuery("#inputNewPassword1").keyup(registerFormPasswordStrengthFeedback);
        });
    </script>
    <div class="fw registerPageAll cover" style="background-image:url(templates/{$template}/assets/images/dash2.png)">
      <div class="container">
        <div class="fw registerPage wow fadeInDown">
          <ul>
            <li class="icon"><i class="fas fa-user-plus"></i></li>
            <li class="title">Hesabınız yok mu?</li>
            <li class="otherTitle">Hemen Bir Hesap Oluşturun!</li>
          </ul>
        </div><!--.registerPage-->
      </div><!--.container-->
    </div><!--.registerPageAll-->

    <div class="container">
      <div class="fw registerForm wow fadeInUp">
        <form method="post" action="{$smarty.server.PHP_SELF}">
          <input type="hidden" name="register" value="true" />
<div class="fw registerFormBot">
          <div class="fw registerFormTop">
            <ul role="tablist">
              <li role="presentation" class="active"><a id="reg-bireysel" href="#" role="tab" data-toggle="tab"><i class="fas fa-user"></i>Bireysel Hesap Oluşturun!</a></li>
              <li role="presentation" class="business"><a id="reg-kurumsal" href="#" role="tab" data-toggle="tab"><i class="fas fa-user-tie"></i>Kurumsal Hesap Oluşturun!</a></li>
            </ul>
          </div><!--.registerFormTop-->

            <div class="tab-pane fade in active" >

              <div class="fw registerFormBotBox">
              {if $registrationDisabled}
                  {include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="cart.php" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}
              {/if}

              {if $errormessage}
                  {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
              {/if}
              {if !$registrationDisabled}
                <div class="fw registerFormTitle">
                  <span class="title">KİŞİSEL BİLGİLERİNİZ</span>
                </div><!--.title-->
                <div class="fw registerFormList">
                  <div class="registerFormRow">
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.firstName}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="input">
                            <input type="text" name="firstname" id="firstname" class="registerText input-tip" value="{$clientfirstname}" placeholder="İsminizi Girin" />
                          </li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.lastName}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="input"><input type="text" name="lastname" id="lastname" value="{$clientlastname}" class="registerText" placeholder="Soyisminizi Girin"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.emailAddress}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="input"><input type="text" name="email" id="email" class="registerText" value="{$clientemail}" placeholder="E-Posta ADresinizi Girin"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.phoneNumber}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="input"><input type="text" name="phonenumber" id="phonenumber" class="registerText" value="{$clientphonenumber}" placeholder="Telefon numaranız"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.clientareapassword}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="input"><input type="password" name="password" id="password" class="registerText" value="{$clientpassword}" placeholder="Şifreniz"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.clientareaconfirmpassword}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-unlocked"></i></li>
                          <li class="input"><input type="password" name="password2" id="password2" class="registerText" value="{$clientpassword2}" placeholder="Şifreniz ( Tekrar )"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                  </div><!--.row-->
                </div><!--.list-->
                <div class="fw registerFormTitle">
                  <span class="title">ADRES BİLGİLERİNİZ</span>
                </div><!--.title-->
                <div class="fw registerFormList">
                  <div class="registerFormRow">

                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">Ülke</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="input">
                          {$clientcountriesdropdown|replace:'<select':'<select class="registerSelect"'}
                          </li>
                          <li class="arrow"><i class="flaticon-chevron-arrow-down"></i></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->

                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.state}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-maps-and-flags"></i></li>
                          <li class="input"><input type="text" name="state" id="state" class="registerText" value="{$clientstate}" placeholder="İlçeniz"></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->

                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.city}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-map"></i></li>
                          <li class="input"><input type="text" name="city" id="city" class="registerText" value="{$clientcity}" placeholder="Yaşadığınız Şehir"></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.postcode}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-directional-sign"></i></li>
                          <li class="input"><input type="text" name="postcode" id="postcode" class="registerText" value="{$clientpostcode}" placeholder="Posta Kodunuz"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.streetAddress}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-directional-sign"></i></li>
                          <li class="input"><input type="text" name="address1" id="address1" class="registerText" value="{$clientaddress1}" placeholder="Adresiniz"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                    <div class="registerFormCol">
                      <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.streetAddress2}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-directional-sign"></i></li>
                          <li class="input"><input type="text" name="address2" id="address2" class="registerText" value="{$clientaddress2}" placeholder="Adresinizin devamı"/></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                  </div><!--.row-->
                </div><!--.list-->
                <div class="fw registerFormTitle">
                  <span class="title">DİĞER BİLGİLERİNİZ</span>
                </div><!--.title-->
                <div class="fw registerFormList">
                  <div class="registerFormRow">
                    <div class="registerFormCol">
                        <p style="margin-bottom: 9px;color: #545568;">{$LANG.orderForm.companyName}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-business"></i></li>
                          <li class="input">
                          <input type="text" name="companyname" id="inputCompanyName" class="registerText" placeholder="{$LANG.orderForm.companyName} ({$LANG.orderForm.optional})" value="{$clientcompanyname}"></li>
                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                  </div><!--.row-->
                {if $customfields}
                {foreach $customfields as $customfield}
                  <div class="registerFormRow">
                    <div class="registerFormCol">
                        <p style="margin-bottom: 9px;color: #545568;">{$customfield.name}</p>
                      <div class="fw registerFormTab">
                        <ul>
                          <li class="icon"><i class="flaticon-business"></i></li>
                          <li class="input">

{$customfield.input|replace:'input ':'input class="registerText" placeholder="Opsiyonel"'}


                        </ul>
                      </div><!--.tab-->
                    </div><!--.col-->
                  </div><!--.row-->
                  {/foreach}
                {/if}
                </div><!--.list-->
                {include file="$template/includes/captcha.tpl"}

                <br><br>

                {if $showMarketingEmailOptIn}
                    <div class="marketing-email-optin">
                        <h4>{lang key='emailMarketing.joinOurMailingList'}</h4>
                        <p>{$marketingEmailOptInMessage}</p>
                        <input type="checkbox" name="marketingoptin" value="1"{if $marketingEmailOptIn} checked{/if} class="no-icheck toggle-switch-success" data-size="small" data-on-text="{lang key='yes'}" data-off-text="{lang key='no'}">
                    </div>
                {/if}


                <div class="fw registerFormSubmit">
                  <div class="registerFormTerm">
                  <div class="fw selectBox">
                        <input type="checkbox" name="accepttos" id="checkboxG1" class="css-checkbox">
                        <label for="checkboxG1" class="css-label">
                        Sözleşmeyi okudum ve anladım.
                        </label>
                      </div>

                  </div><!--.term-->
                  <div class="registerFormSubmitRight">
                      <button type="submit" class="simpleButton" style="    background: #25d461;">KAYIT OL! <i class="flaticon-arrow-pointing-to-right"></i>
              </button>
                  </div><!--.right-->
                </div><!--.registerFormSubmit-->
              </form>
                <div class="fw termList">
                  <strong>1- Taraflar</strong>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu ante vulputate, varius tellus ac, feugiat ligula. Mauris quis placerat nisl. Proin commodo, enim non aliquam placerat, diam libero varius ante, in fermentum dui enim eu erat. Morbi cursus molestie sollicitudin. Etiam metus elit, pharetra nec libero ac, sodales dapibus felis. Duis lacinia purus vitae nunc mattis consequat. Pellentesque dictum magna nec velit egestas, a euismod mauris ullamcorper. Praesent lorem odio, rhoncus eu nunc vitae, auctor pellentesque enim.
                </p>
                </div><!--.termList-->
              </div><!--.registerFormBotBox-->
            </div><!--.register1-->
          </div><!--.tabcontent-->
        </div><!--.bot-->
      </div><!--.registerForm-->
{/if}
    </div><!--.container--><br><br>
