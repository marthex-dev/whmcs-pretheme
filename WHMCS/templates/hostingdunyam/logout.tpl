
<div class="fw pageHeaderAll cover" style="background-image:url(templates/{$template}/assets/images/dash2.png)">
  <div class="container">
    <div class="fw pageHeader">
      <ul class="sul">
        <li class="title"><h1 class="titleX">{$pagetitle}</h1></li>
      </ul>
    </div><!--.pageHeader-->
  </div><!--.container-->
</div><!--.pageHeaderAll-->

<div class="container">
  <div class="fw pageAll">
    <div class="fw page" style="padding: 20px;background: #fff;">



<div class="logincontainer">

    {include file="$template/includes/pageheader.tpl" title=$LANG.logouttitle}

    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.logoutsuccessful textcenter=true}

    <div class="main-content">
        <p class="text-center">
            <a href="index.php" class="btn btn-default">{$LANG.logoutcontinuetext}</a>
        </p>
    </div>
</div>
