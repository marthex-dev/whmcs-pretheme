
<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/orderforms/venturex/css/all.min.css?v={$versionHash}" />
<script type="text/javascript" src="{$WEB_ROOT}/templates/orderforms/venturex/js/scripts.min.js?v={$versionHash}"></script>

  <div id="domain">
    <div class="top">
      <div class="container">
        <div>
          <div class="wow fadeInDown">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="48" height="48" viewBox="0 0 48 48">
              <g data-name="Mask Group 229" transform="translate(-374 -210)">
                <path d="M49.6,43.2H47.467V20.8a3.209,3.209,0,0,0-3.2-3.2H42.133V13.333a1.053,1.053,0,0,0-.32-.747l-9.6-9.6a1.053,1.053,0,0,0-.747-.32H14.4a3.209,3.209,0,0,0-3.2,3.2V17.6H9.067a3.209,3.209,0,0,0-3.2,3.2V43.2H3.733a1.07,1.07,0,0,0-1.067,1.067,6.419,6.419,0,0,0,6.4,6.4h35.2a6.419,6.419,0,0,0,6.4-6.4A1.07,1.07,0,0,0,49.6,43.2ZM42.133,19.733h2.133A1.07,1.07,0,0,1,45.333,20.8V43.2h-3.2Zm-9.6-13.44,5.973,5.973H33.6A1.07,1.07,0,0,1,32.533,11.2Zm-19.2-.427A1.07,1.07,0,0,1,14.4,4.8h16v6.4a3.209,3.209,0,0,0,3.2,3.2H40V43.2H13.333ZM8,20.8a1.07,1.07,0,0,1,1.067-1.067H11.2V43.2H8ZM44.267,48.533H9.067a4.29,4.29,0,0,1-4.16-3.2H48.373A4.183,4.183,0,0,1,44.267,48.533ZM20.8,34.133a1.067,1.067,0,1,1-1.067-1.067A1.07,1.07,0,0,1,20.8,34.133Zm13.867,0A1.07,1.07,0,0,1,33.6,35.2H26.133a1.067,1.067,0,1,1,0-2.133H33.6A1.07,1.07,0,0,1,34.667,34.133ZM20.8,28.8a1.067,1.067,0,1,1-1.067-1.067A1.07,1.07,0,0,1,20.8,28.8Zm13.867,0A1.07,1.07,0,0,1,33.6,29.867H26.133a1.067,1.067,0,1,1,0-2.133H33.6A1.07,1.07,0,0,1,34.667,28.8Zm0-5.333A1.07,1.07,0,0,1,33.6,24.533H26.133a1.067,1.067,0,1,1,0-2.133H33.6A1.07,1.07,0,0,1,34.667,23.467ZM23.68,19.52a1.031,1.031,0,0,1,0,1.493l-3.2,3.2a1.031,1.031,0,0,1-1.493,0L17.92,23.147a1.056,1.056,0,0,1,1.493-1.493l.32.32,2.453-2.453A1.031,1.031,0,0,1,23.68,19.52Z" transform="translate(371.333 207.333)" fill="#fff"/>
              </g>
            </svg>            
          </div>
          <h1 class="wow fadeInDown">Alan Adı Transfer</h1>
          <h2 class="wow fadeInDown">Şimdi yeni alan adınızı tescil ederek internetteki yerinizi alın!</h2>
        </div>
        <img class="wow fadeIn" src="templates/{$template}/assets/images/domainTop.png" alt="domainTop">
      </div>
    </div>
    <div class="query container">
      <div>
<form method="post" action="cart.php" id="frmDomainTransfer">
                <input type="hidden" name="a" value="addDomainTransfer">

                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">{lang key='orderForm.singleTransfer'}</h3>
                            </div>
                            <div class="panel-body">
                                <div class="form-group">
                                    <label for="inputTransferDomain">{lang key='domainname'}</label>
                                    <input type="text" class="form-control" name="domain" id="inputTransferDomain" value="{$lookupTerm}" placeholder="{lang key='yourdomainplaceholder'}.{lang key='yourtldplaceholder'}" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.enterDomain'}" />
                                </div>
                                <div class="form-group">
                                    <label for="inputAuthCode" style="width:100%;">
                                        {lang key='orderForm.authCode'}
                                        <a href="" data-toggle="tooltip" data-placement="left" title="{lang key='orderForm.authCodeTooltip'}" class="pull-right"><i class="fas fa-question-circle"></i> {lang key='orderForm.help'}</a>
                                    </label>
                                    <input type="text" class="form-control" name="epp" id="inputAuthCode" placeholder="{lang key='orderForm.authCodePlaceholder'}" data-toggle="tooltip" data-placement="left" data-trigger="manual" title="{lang key='orderForm.required'}" />
                                </div>
                                <div id="transferUnavailable" class="alert alert-warning slim-alert text-center hidden"></div>
                                {if $captcha->isEnabled() && !$captcha->recaptcha->isEnabled()}
                                    <div class="captcha-container" id="captchaContainer">
                                        <div class="default-captcha">
                                            <p>{lang key="cartSimpleCaptcha"}</p>
                                            <div>
                                                <img id="inputCaptchaImage" src="{$systemurl}includes/verifyimage.php" />
                                                <input id="inputCaptcha" type="text" name="code" maxlength="5" class="form-control input-sm" data-toggle="tooltip" data-placement="right" data-trigger="manual" title="{lang key='orderForm.required'}" />
                                            </div>
                                        </div>
                                    </div>
                                {elseif $captcha->isEnabled() && $captcha->recaptcha->isEnabled() && !$captcha->recaptcha->isInvisible()}
                                    <div class="form-group recaptcha-container" id="captchaContainer"></div>
                                {/if}
                            </div>

                            <div class="panel-footer text-right">
                                <button type="submit" id="btnTransferDomain" class="btn btn-primary btn-transfer{$captcha->getButtonClass($captchaForm)}">
                                    <span class="loader hidden" id="addTransferLoader">
                                        <i class="fas fa-fw fa-spinner fa-spin"></i>
                                    </span>
                                    <span id="addToCart">{lang key="orderForm.addToCart"}</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </form>

            <p class="text-center small">* {lang key='orderForm.extendExclusions'}</p>

      </div>
    </div>
    <div class="features">
      <div class="container">
        <div class="headContent tcenter">
          <h2>Hizmet Özelliklerimiz</h2>
        </div>
        <div class="row">
          <div class="col-md-4 col-sm-6">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="56" height="57" viewBox="0 0 56 57">
              <g transform="translate(-1068 -3612)">
                <circle data-name="Ellipse 64" cx="9" cy="9" r="9" transform="translate(1068 3651)" fill="#FF5F8D"></circle>
                <g data-name="Mask Group 19" clip-path="url(#clip-path)">
                  <g data-name="browser (1)" transform="translate(1074 3612)">
                    <g data-name="Group 2473">
                      <g data-name="Group 2472">
                        <path data-name="Path 2026" d="M46.25,0H3.75A3.755,3.755,0,0,0,0,3.75v42.5A3.755,3.755,0,0,0,3.75,50h42.5A3.755,3.755,0,0,0,50,46.25V3.75A3.755,3.755,0,0,0,46.25,0Zm2.083,46.25a2.085,2.085,0,0,1-2.083,2.083H3.75A2.085,2.085,0,0,1,1.667,46.25V3.75A2.085,2.085,0,0,1,3.75,1.667h42.5A2.086,2.086,0,0,1,48.333,3.75Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2475">
                      <g data-name="Group 2474">
                        <path data-name="Path 2027" d="M7.5,3.333H4.167a.833.833,0,0,0-.833.833V7.5a.833.833,0,0,0,.833.833H7.5A.833.833,0,0,0,8.333,7.5V4.167A.833.833,0,0,0,7.5,3.333ZM6.667,6.667H5V5H6.667Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2477">
                      <g data-name="Group 2476">
                        <path data-name="Path 2028" d="M14.167,3.333H10.833A.833.833,0,0,0,10,4.167V7.5a.833.833,0,0,0,.833.833h3.333A.833.833,0,0,0,15,7.5V4.167A.833.833,0,0,0,14.167,3.333Zm-.833,3.333H11.667V5h1.667Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2479">
                      <g data-name="Group 2478">
                        <path data-name="Path 2029" d="M20.833,3.333H17.5a.833.833,0,0,0-.833.833V7.5a.833.833,0,0,0,.833.833h3.333a.833.833,0,0,0,.833-.833V4.167A.833.833,0,0,0,20.833,3.333ZM20,6.667H18.333V5H20Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2481">
                      <g data-name="Group 2480">
                        <path data-name="Path 2030" d="M46.25,0H3.75A3.755,3.755,0,0,0,0,3.75v7.083a.833.833,0,0,0,.833.833H49.167A.833.833,0,0,0,50,10.833V3.75A3.754,3.754,0,0,0,46.25,0Zm2.083,10H1.667V3.75A2.085,2.085,0,0,1,3.75,1.667h42.5A2.086,2.086,0,0,1,48.333,3.75Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2483">
                      <g data-name="Group 2482">
                        <path data-name="Path 2031" d="M49.167,28.333H.833A.833.833,0,0,0,0,29.167V46.1A3.907,3.907,0,0,0,3.9,50H46.1A3.907,3.907,0,0,0,50,46.1V29.167A.833.833,0,0,0,49.167,28.333ZM48.333,46.1A2.238,2.238,0,0,1,46.1,48.333H3.9A2.238,2.238,0,0,1,1.667,46.1V30H48.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2485">
                      <g data-name="Group 2484">
                        <path data-name="Path 2032" d="M10,13.333A6.667,6.667,0,1,0,16.667,20,6.674,6.674,0,0,0,10,13.333ZM10,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,10,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2487">
                      <g data-name="Group 2486">
                        <path data-name="Path 2033" d="M40,13.333A6.667,6.667,0,1,0,46.667,20,6.674,6.674,0,0,0,40,13.333ZM40,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,40,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2489">
                      <g data-name="Group 2488">
                        <path data-name="Path 2034" d="M25,13.333A6.667,6.667,0,1,0,31.667,20,6.674,6.674,0,0,0,25,13.333ZM25,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,25,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2491">
                      <g data-name="Group 2490">
                        <path data-name="Path 2035" d="M10.833,31.667h-5A.833.833,0,0,0,5,32.5V45.833a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V32.5A.833.833,0,0,0,10.833,31.667ZM10,45H6.667V33.333H10Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2493">
                      <g data-name="Group 2492">
                        <path data-name="Path 2036" d="M19.167,34.167h-5a.833.833,0,0,0-.833.833V45.833a.833.833,0,0,0,.833.833h5A.833.833,0,0,0,20,45.833V35A.833.833,0,0,0,19.167,34.167ZM18.333,45H15V35.833h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2495">
                      <g data-name="Group 2494">
                        <path data-name="Path 2037" d="M27.5,35.833h-5a.833.833,0,0,0-.833.833v9.167a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V36.667A.833.833,0,0,0,27.5,35.833ZM26.667,45H23.333V37.5h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2497">
                      <g data-name="Group 2496">
                        <path data-name="Path 2038" d="M35.833,38.333h-5a.833.833,0,0,0-.833.833v6.667a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V39.167A.833.833,0,0,0,35.833,38.333ZM35,45H31.667V40H35Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2499">
                      <g data-name="Group 2498">
                        <path data-name="Path 2039" d="M44.167,33.333h-5a.833.833,0,0,0-.833.833V45.833a.833.833,0,0,0,.833.833h5A.833.833,0,0,0,45,45.833V34.167A.833.833,0,0,0,44.167,33.333ZM43.333,45H40V35h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
            <strong>Markanıza Değer Katın!</strong>
            <h3>Özel NS Oluşturma</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie interdum est sed ultricies.</p>
          </div>
          <div class="col-md-4 col-sm-6 red">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="56" height="57" viewBox="0 0 56 57">
              <g data-name="Group 2319" transform="translate(-1068 -3612)">
                <circle id="Ellipse_64" data-name="Ellipse 64" cx="9" cy="9" r="9" transform="translate(1068 3651)" fill="#e9533a"/>
                <g data-name="Mask Group 16" clip-path="url(#clip-path)">
                  <g data-name="support (2)" transform="translate(1074 3612)">
                    <g data-name="Group 2439">
                      <g data-name="Group 2438">
                        <path data-name="Path 2003" d="M35.742,38.672a.977.977,0,1,0,.977.977A.977.977,0,0,0,35.742,38.672Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2441">
                      <g data-name="Group 2440">
                        <path data-name="Path 2004" d="M38.147,35.514l-4.642-1.547-1.666-3.333a10.7,10.7,0,0,0,2.895-5.658l.208-1.246h1.777a2.933,2.933,0,0,0,2.93-2.93V14.648a14.648,14.648,0,0,0-29.3,0V20.8A2.934,2.934,0,0,0,12.3,23.563v1.145a2.933,2.933,0,0,0,2.93,2.93h.858a10.594,10.594,0,0,0,1.638,2.537c.138.159.283.313.43.463l-1.665,3.331-4.642,1.547c-5.4,1.8-9.314,7.481-9.314,13.509A.977.977,0,0,0,3.516,50H46.484a.977.977,0,0,0,.977-.977C47.461,43,43.544,37.314,38.147,35.514ZM37.7,20.8a.978.978,0,0,1-.977.977h-1.49c.248-1.923.414-3.969.48-5.984,0-.057,0-.112.005-.168H37.7Zm-24.414.977A.978.978,0,0,1,12.3,20.8V15.625h1.982q0,.153.01.307v.01h0c.068,1.96.232,3.953.474,5.834H13.281Zm1.953,3.906a.978.978,0,0,1-.977-.977V23.73h.8l.208,1.246c.04.237.088.473.145.707Zm-.975-12.012H12.342a12.7,12.7,0,0,1,25.316,0H35.741a9.891,9.891,0,0,0-9.867-9.766H24.126A9.891,9.891,0,0,0,14.259,13.672Zm9.867-7.812h1.748a7.941,7.941,0,0,1,7.915,7.95c0,.307,0,.575-.008.818,0,0,0,.006,0,.01l-1.221-.175a15.692,15.692,0,0,1-8.822-4.411.977.977,0,0,0-.691-.286,8.835,8.835,0,0,0-6.793,3.214A7.938,7.938,0,0,1,24.126,5.859Zm-6.69,19.824a55.819,55.819,0,0,1-1.172-9.478l1.314-1.753a6.874,6.874,0,0,1,5.083-2.723A17.664,17.664,0,0,0,32.284,16.4l1.438.205c-.1,2.04-.292,4.086-.574,5.969v0c-.089.605-.16.995-.34,2.082a8.3,8.3,0,0,1-5.887,6.671,7.683,7.683,0,0,1-8.625-3.689h1.991a2.934,2.934,0,0,0,2.762,1.953H25a2.93,2.93,0,0,0,0-5.859H23.047a2.931,2.931,0,0,0-2.763,1.953ZM22.965,33.3a9.8,9.8,0,0,0,3.632.082l-1.726,1.825Zm.564,3.326-3.1,3.276a37.208,37.208,0,0,1-2.186-5.07l1.163-2.326Zm6.9-4.452,1.329,2.657a37.2,37.2,0,0,1-2.187,5.072l-3.315-3.315ZM22.07,26.66a.977.977,0,0,1,.977-.977H25a.977.977,0,0,1,0,1.953H23.047A.978.978,0,0,1,22.07,26.66ZM4.531,48.047a12.341,12.341,0,0,1,7.94-10.68L16.582,36a39.147,39.147,0,0,0,2.78,6.029l.005.01h0a39.158,39.158,0,0,0,2.673,4.082l1.2,1.929ZM25,47.176,23.676,45.05q-.022-.036-.047-.069a37.234,37.234,0,0,1-2.2-3.287L24.91,38.01l3.67,3.67a37.194,37.194,0,0,1-2.208,3.3C26.324,45.044,26.392,44.944,25,47.176Zm1.759.871,1.2-1.929A39.143,39.143,0,0,0,30.652,42l.014-.026,0,0A39.116,39.116,0,0,0,33.418,36l4.111,1.37a12.341,12.341,0,0,1,7.94,10.68H26.759Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2443">
                      <g data-name="Group 2442">
                        <path data-name="Path 2005" d="M42.534,44.095a9.764,9.764,0,0,0-2.765-3.356.977.977,0,0,0-1.191,1.548,7.8,7.8,0,0,1,2.208,2.681.977.977,0,0,0,1.747-.873Z" fill="#105285"/>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
            <strong>İletişim Bilgilerinizi Gİzleyin!</strong>
            <h3>Whois Gizleme</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie interdum est sed ultricies.</p>
          </div>
          <div class="col-md-4 col-sm-6 green">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="56" height="57" viewBox="0 0 56 57">
              <g data-name="Group 2319" transform="translate(-1068 -3612)">
                <circle data-name="Ellipse 64" cx="9" cy="9" r="9" transform="translate(1068 3651)" fill="#15d48e"/>
                <g data-name="Mask Group 17" clip-path="url(#clip-path)">
                  <g transform="translate(1074 3612)">
                    <g data-name="Group 2445">
                      <g data-name="Group 2444">
                        <path data-name="Path 2006" d="M5.8,6.848a.732.732,0,0,0,.732.732h.049a.732.732,0,0,0,.732-.732A.757.757,0,0,0,5.8,6.848Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2447">
                      <g data-name="Group 2446">
                        <path data-name="Path 2007" d="M8.29,6.848a.732.732,0,0,0,.732.732h.049A.732.732,0,0,0,9.8,6.848.757.757,0,0,0,8.29,6.848Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2449">
                      <g data-name="Group 2448">
                        <path data-name="Path 2008" d="M10.78,6.848a.732.732,0,0,0,.732.732h.049a.732.732,0,0,0,.732-.732A.757.757,0,0,0,10.78,6.848Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2451">
                      <g data-name="Group 2450">
                        <path data-name="Path 2009" d="M42.128,6.116H15.716a.732.732,0,0,0,0,1.465H42.128a.732.732,0,1,0,0-1.465Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2453">
                      <g data-name="Group 2452">
                        <path data-name="Path 2010" d="M43.5,24.845H25a.732.732,0,1,0,0,1.465H43.5a.732.732,0,1,0,0-1.465Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2455">
                      <g data-name="Group 2454">
                        <path data-name="Path 2011" d="M34.252,19.33H25a.732.732,0,0,0,0,1.465h9.252a.732.732,0,0,0,0-1.465Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2457">
                      <g data-name="Group 2456">
                        <path data-name="Path 2012" d="M43.5,27.876H25a.732.732,0,0,0,0,1.465H43.5a.732.732,0,0,0,0-1.465Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2459">
                      <g data-name="Group 2458">
                        <path data-name="Path 2013" d="M43.5,33.94H25A.732.732,0,0,0,25,35.4H43.5a.732.732,0,0,0,0-1.465Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2461">
                      <g data-name="Group 2460">
                        <path data-name="Path 2014" d="M43.5,30.908H25a.732.732,0,1,0,0,1.465H43.5a.732.732,0,0,0,0-1.465Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2463">
                      <g data-name="Group 2462">
                        <path data-name="Path 2015" d="M43.5,40H25a.732.732,0,0,0,0,1.465H43.5A.732.732,0,0,0,43.5,40Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2465">
                      <g data-name="Group 2464">
                        <path data-name="Path 2016" d="M43.5,36.971H25a.732.732,0,0,0,0,1.465H43.5a.732.732,0,0,0,0-1.465Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2467">
                      <g data-name="Group 2466">
                        <path data-name="Path 2017" d="M17.846,37.8H8.254a2.051,2.051,0,1,0,0,4.1h9.591a2.051,2.051,0,1,0,0-4.1Zm0,2.637H8.254a.586.586,0,0,1,0-1.172h9.591a.586.586,0,0,1,0,1.172Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2469">
                      <g data-name="Group 2468">
                        <path data-name="Path 2018" d="M43.676,0H6.324A6.331,6.331,0,0,0,0,6.324V43.676A6.331,6.331,0,0,0,6.324,50h4.724a.732.732,0,1,0,0-1.465H6.324a4.864,4.864,0,0,1-4.859-4.859V12.269H40.419a.732.732,0,0,0,0-1.465H1.465V6.324A4.863,4.863,0,0,1,6.324,1.465H43.676a4.864,4.864,0,0,1,4.859,4.859V10.8h-4.7a.732.732,0,0,0,0,1.465h4.7V43.676a4.864,4.864,0,0,1-4.859,4.859H14.466a.732.732,0,1,0,0,1.465h29.21A6.331,6.331,0,0,0,50,43.676V6.324A6.331,6.331,0,0,0,43.676,0Z" fill="#105285"/>
                      </g>
                    </g>
                    <g data-name="Group 2471">
                      <g data-name="Group 2470">
                        <path data-name="Path 2019" d="M19.164,29.342a.732.732,0,0,0,.732-.732V25.986a4.024,4.024,0,0,0-1.184-2.858c-2.56-2.559-2.522-2.542-2.854-2.8a4.855,4.855,0,0,0-3.008-1.035h-3.8A2.851,2.851,0,0,0,6.2,22.14V34.992A1.58,1.58,0,0,0,7.782,36.57h10.4A1.72,1.72,0,0,0,19.9,34.852V32.027a.732.732,0,0,0-1.465,0v2.825a.253.253,0,0,1-.253.253c-10.817-.052-10.51.109-10.51-.113V22.14a1.384,1.384,0,0,1,1.383-1.383c1.636,0,3.762,0,3.915,0,.246.524.174.647.179,3.485a1.9,1.9,0,0,0,1.4,1.831,1.963,1.963,0,0,0,.5.068c3.556.006,3.226-.01,3.388.009v2.457A.732.732,0,0,0,19.164,29.342Zm-4.228-4.678a.433.433,0,0,1-.326-.419c0-2.974.008-2.791-.014-3.008a3.453,3.453,0,0,1,.678.525c2.223,2.266,2.49,2.39,2.8,2.917C14.755,24.677,15.021,24.684,14.936,24.663Z" fill="#105285"/>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
            <strong>Koruma Altına Alın!</strong>
            <h3>Domain Kilitleme</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie interdum est sed ultricies.</p>
          </div>
          <div class="col-md-4 col-sm-6">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="56" height="57" viewBox="0 0 56 57">
              <g transform="translate(-1068 -3612)">
                <circle data-name="Ellipse 64" cx="9" cy="9" r="9" transform="translate(1068 3651)" fill="#FF5F8D"></circle>
                <g data-name="Mask Group 19" clip-path="url(#clip-path)">
                  <g data-name="browser (1)" transform="translate(1074 3612)">
                    <g data-name="Group 2473">
                      <g data-name="Group 2472">
                        <path data-name="Path 2026" d="M46.25,0H3.75A3.755,3.755,0,0,0,0,3.75v42.5A3.755,3.755,0,0,0,3.75,50h42.5A3.755,3.755,0,0,0,50,46.25V3.75A3.755,3.755,0,0,0,46.25,0Zm2.083,46.25a2.085,2.085,0,0,1-2.083,2.083H3.75A2.085,2.085,0,0,1,1.667,46.25V3.75A2.085,2.085,0,0,1,3.75,1.667h42.5A2.086,2.086,0,0,1,48.333,3.75Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2475">
                      <g data-name="Group 2474">
                        <path data-name="Path 2027" d="M7.5,3.333H4.167a.833.833,0,0,0-.833.833V7.5a.833.833,0,0,0,.833.833H7.5A.833.833,0,0,0,8.333,7.5V4.167A.833.833,0,0,0,7.5,3.333ZM6.667,6.667H5V5H6.667Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2477">
                      <g data-name="Group 2476">
                        <path data-name="Path 2028" d="M14.167,3.333H10.833A.833.833,0,0,0,10,4.167V7.5a.833.833,0,0,0,.833.833h3.333A.833.833,0,0,0,15,7.5V4.167A.833.833,0,0,0,14.167,3.333Zm-.833,3.333H11.667V5h1.667Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2479">
                      <g data-name="Group 2478">
                        <path data-name="Path 2029" d="M20.833,3.333H17.5a.833.833,0,0,0-.833.833V7.5a.833.833,0,0,0,.833.833h3.333a.833.833,0,0,0,.833-.833V4.167A.833.833,0,0,0,20.833,3.333ZM20,6.667H18.333V5H20Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2481">
                      <g data-name="Group 2480">
                        <path data-name="Path 2030" d="M46.25,0H3.75A3.755,3.755,0,0,0,0,3.75v7.083a.833.833,0,0,0,.833.833H49.167A.833.833,0,0,0,50,10.833V3.75A3.754,3.754,0,0,0,46.25,0Zm2.083,10H1.667V3.75A2.085,2.085,0,0,1,3.75,1.667h42.5A2.086,2.086,0,0,1,48.333,3.75Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2483">
                      <g data-name="Group 2482">
                        <path data-name="Path 2031" d="M49.167,28.333H.833A.833.833,0,0,0,0,29.167V46.1A3.907,3.907,0,0,0,3.9,50H46.1A3.907,3.907,0,0,0,50,46.1V29.167A.833.833,0,0,0,49.167,28.333ZM48.333,46.1A2.238,2.238,0,0,1,46.1,48.333H3.9A2.238,2.238,0,0,1,1.667,46.1V30H48.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2485">
                      <g data-name="Group 2484">
                        <path data-name="Path 2032" d="M10,13.333A6.667,6.667,0,1,0,16.667,20,6.674,6.674,0,0,0,10,13.333ZM10,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,10,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2487">
                      <g data-name="Group 2486">
                        <path data-name="Path 2033" d="M40,13.333A6.667,6.667,0,1,0,46.667,20,6.674,6.674,0,0,0,40,13.333ZM40,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,40,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2489">
                      <g data-name="Group 2488">
                        <path data-name="Path 2034" d="M25,13.333A6.667,6.667,0,1,0,31.667,20,6.674,6.674,0,0,0,25,13.333ZM25,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,25,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2491">
                      <g data-name="Group 2490">
                        <path data-name="Path 2035" d="M10.833,31.667h-5A.833.833,0,0,0,5,32.5V45.833a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V32.5A.833.833,0,0,0,10.833,31.667ZM10,45H6.667V33.333H10Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2493">
                      <g data-name="Group 2492">
                        <path data-name="Path 2036" d="M19.167,34.167h-5a.833.833,0,0,0-.833.833V45.833a.833.833,0,0,0,.833.833h5A.833.833,0,0,0,20,45.833V35A.833.833,0,0,0,19.167,34.167ZM18.333,45H15V35.833h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2495">
                      <g data-name="Group 2494">
                        <path data-name="Path 2037" d="M27.5,35.833h-5a.833.833,0,0,0-.833.833v9.167a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V36.667A.833.833,0,0,0,27.5,35.833ZM26.667,45H23.333V37.5h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2497">
                      <g data-name="Group 2496">
                        <path data-name="Path 2038" d="M35.833,38.333h-5a.833.833,0,0,0-.833.833v6.667a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V39.167A.833.833,0,0,0,35.833,38.333ZM35,45H31.667V40H35Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2499">
                      <g data-name="Group 2498">
                        <path data-name="Path 2039" d="M44.167,33.333h-5a.833.833,0,0,0-.833.833V45.833a.833.833,0,0,0,.833.833h5A.833.833,0,0,0,45,45.833V34.167A.833.833,0,0,0,44.167,33.333ZM43.333,45H40V35h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
            <strong>Ücretsiz Hesap Aktarımı!</strong>
            <h3>İç Transfer</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie interdum est sed ultricies.</p>
          </div>
          <div class="col-md-4 col-sm-6 purple">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="56" height="57" viewBox="0 0 56 57">
              <g data-name="Group 2319" transform="translate(-1068 -3612)">
                <circle data-name="Ellipse 64" cx="9" cy="9" r="9" transform="translate(1068 3651)" fill="#911cbc"/>
                <g data-name="Mask Group 18">
                  <g transform="translate(1074 3612)">
                    <path data-name="Path 2020" d="M49.2,2.394H.8a.8.8,0,0,0-.8.8V46.809a.8.8,0,0,0,.8.8H49.2a.8.8,0,0,0,.8-.8V38.3a.8.8,0,1,0-1.6,0v7.713H1.6V10.372H48.4V35.106a.8.8,0,0,0,1.6,0V3.191A.8.8,0,0,0,49.2,2.394ZM1.6,3.989H31.117V8.777H1.6ZM32.713,8.777V3.989H48.4V8.777Z" fill="#105285"/>
                    <path data-name="Path 2021" d="M40.585,5.532a.851.851,0,1,0,.851.851A.852.852,0,0,0,40.585,5.532Z" fill="#105285"/>
                    <path data-name="Path 2022" d="M36.223,5.532a.851.851,0,1,0,.851.851A.852.852,0,0,0,36.223,5.532Z" fill="#105285"/>
                    <path data-name="Path 2023" d="M44.947,5.532a.851.851,0,1,0,.851.851A.852.852,0,0,0,44.947,5.532Z" fill="#105285"/>
                    <path data-name="Path 2024" d="M31.442,29.551a.8.8,0,0,0-1.128,0l-4.283,4.283a2.395,2.395,0,1,0,1.128,1.128l4.283-4.283A.8.8,0,0,0,31.442,29.551ZM25,36.792a.8.8,0,1,1,.8-.8A.8.8,0,0,1,25,36.792Z" fill="#105285"/>
                    <path data-name="Path 2025" d="M35.711,35.994a.8.8,0,0,0,.8.8H42.2a.8.8,0,0,0,.8-.8q0-.03,0-.06A17.939,17.939,0,0,0,37.8,23.359a.724.724,0,0,0-.168-.168,17.966,17.966,0,0,0-25.272,0,.809.809,0,0,0-.091.077.8.8,0,0,0-.077.091A17.939,17.939,0,0,0,7,35.994a.8.8,0,0,0,.8.8h5.692a.8.8,0,0,0,.8-.8,10.711,10.711,0,0,1,21.421,0ZM16.885,26.75l-2.9-2.9A16.338,16.338,0,0,1,24.2,19.611v4.1A12.256,12.256,0,0,0,16.885,26.75ZM25.8,19.611a16.339,16.339,0,0,1,10.217,4.24l-2.9,2.9A12.255,12.255,0,0,0,25.8,23.714ZM37.281,35.2a12.255,12.255,0,0,0-3.037-7.317l2.9-2.9A16.34,16.34,0,0,1,41.383,35.2h-4.1Zm-24.561,0h-4.1a16.34,16.34,0,0,1,4.24-10.217l2.9,2.9A12.256,12.256,0,0,0,12.719,35.2Z" fill="#105285"/>
                  </g>
                </g>
              </g>
            </svg>            
            <strong>Kolayca İşlem Yapın!</strong>
            <h3>Gelişmiş Yönetim Paneli</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie interdum est sed ultricies.</p>
          </div>
          <div class="col-md-4 col-sm-6">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="56" height="57" viewBox="0 0 56 57">
              <g transform="translate(-1068 -3612)">
                <circle data-name="Ellipse 64" cx="9" cy="9" r="9" transform="translate(1068 3651)" fill="#FF5F8D"></circle>
                <g data-name="Mask Group 19" clip-path="url(#clip-path)">
                  <g data-name="browser (1)" transform="translate(1074 3612)">
                    <g data-name="Group 2473">
                      <g data-name="Group 2472">
                        <path data-name="Path 2026" d="M46.25,0H3.75A3.755,3.755,0,0,0,0,3.75v42.5A3.755,3.755,0,0,0,3.75,50h42.5A3.755,3.755,0,0,0,50,46.25V3.75A3.755,3.755,0,0,0,46.25,0Zm2.083,46.25a2.085,2.085,0,0,1-2.083,2.083H3.75A2.085,2.085,0,0,1,1.667,46.25V3.75A2.085,2.085,0,0,1,3.75,1.667h42.5A2.086,2.086,0,0,1,48.333,3.75Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2475">
                      <g data-name="Group 2474">
                        <path data-name="Path 2027" d="M7.5,3.333H4.167a.833.833,0,0,0-.833.833V7.5a.833.833,0,0,0,.833.833H7.5A.833.833,0,0,0,8.333,7.5V4.167A.833.833,0,0,0,7.5,3.333ZM6.667,6.667H5V5H6.667Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2477">
                      <g data-name="Group 2476">
                        <path data-name="Path 2028" d="M14.167,3.333H10.833A.833.833,0,0,0,10,4.167V7.5a.833.833,0,0,0,.833.833h3.333A.833.833,0,0,0,15,7.5V4.167A.833.833,0,0,0,14.167,3.333Zm-.833,3.333H11.667V5h1.667Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2479">
                      <g data-name="Group 2478">
                        <path data-name="Path 2029" d="M20.833,3.333H17.5a.833.833,0,0,0-.833.833V7.5a.833.833,0,0,0,.833.833h3.333a.833.833,0,0,0,.833-.833V4.167A.833.833,0,0,0,20.833,3.333ZM20,6.667H18.333V5H20Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2481">
                      <g data-name="Group 2480">
                        <path data-name="Path 2030" d="M46.25,0H3.75A3.755,3.755,0,0,0,0,3.75v7.083a.833.833,0,0,0,.833.833H49.167A.833.833,0,0,0,50,10.833V3.75A3.754,3.754,0,0,0,46.25,0Zm2.083,10H1.667V3.75A2.085,2.085,0,0,1,3.75,1.667h42.5A2.086,2.086,0,0,1,48.333,3.75Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2483">
                      <g data-name="Group 2482">
                        <path data-name="Path 2031" d="M49.167,28.333H.833A.833.833,0,0,0,0,29.167V46.1A3.907,3.907,0,0,0,3.9,50H46.1A3.907,3.907,0,0,0,50,46.1V29.167A.833.833,0,0,0,49.167,28.333ZM48.333,46.1A2.238,2.238,0,0,1,46.1,48.333H3.9A2.238,2.238,0,0,1,1.667,46.1V30H48.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2485">
                      <g data-name="Group 2484">
                        <path data-name="Path 2032" d="M10,13.333A6.667,6.667,0,1,0,16.667,20,6.674,6.674,0,0,0,10,13.333ZM10,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,10,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2487">
                      <g data-name="Group 2486">
                        <path data-name="Path 2033" d="M40,13.333A6.667,6.667,0,1,0,46.667,20,6.674,6.674,0,0,0,40,13.333ZM40,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,40,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2489">
                      <g data-name="Group 2488">
                        <path data-name="Path 2034" d="M25,13.333A6.667,6.667,0,1,0,31.667,20,6.674,6.674,0,0,0,25,13.333ZM25,25a5,5,0,1,1,5-5A5.006,5.006,0,0,1,25,25Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2491">
                      <g data-name="Group 2490">
                        <path data-name="Path 2035" d="M10.833,31.667h-5A.833.833,0,0,0,5,32.5V45.833a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V32.5A.833.833,0,0,0,10.833,31.667ZM10,45H6.667V33.333H10Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2493">
                      <g data-name="Group 2492">
                        <path data-name="Path 2036" d="M19.167,34.167h-5a.833.833,0,0,0-.833.833V45.833a.833.833,0,0,0,.833.833h5A.833.833,0,0,0,20,45.833V35A.833.833,0,0,0,19.167,34.167ZM18.333,45H15V35.833h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2495">
                      <g data-name="Group 2494">
                        <path data-name="Path 2037" d="M27.5,35.833h-5a.833.833,0,0,0-.833.833v9.167a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V36.667A.833.833,0,0,0,27.5,35.833ZM26.667,45H23.333V37.5h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2497">
                      <g data-name="Group 2496">
                        <path data-name="Path 2038" d="M35.833,38.333h-5a.833.833,0,0,0-.833.833v6.667a.833.833,0,0,0,.833.833h5a.833.833,0,0,0,.833-.833V39.167A.833.833,0,0,0,35.833,38.333ZM35,45H31.667V40H35Z" fill="#105285"></path>
                      </g>
                    </g>
                    <g data-name="Group 2499">
                      <g data-name="Group 2498">
                        <path data-name="Path 2039" d="M44.167,33.333h-5a.833.833,0,0,0-.833.833V45.833a.833.833,0,0,0,.833.833h5A.833.833,0,0,0,45,45.833V34.167A.833.833,0,0,0,44.167,33.333ZM43.333,45H40V35h3.333Z" fill="#105285"></path>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </svg>
            <strong>Stabil Fiyat Politikası!</strong>
            <h3>Stabil Fiyatlar</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam molestie interdum est sed ultricies.</p>
          </div>
        </div>
      </div>
    </div>    </div>    </div>


