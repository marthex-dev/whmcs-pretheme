
<div class="fw pageHeaderAll cover" style="background-image:url(templates/{$template}/assets/images/dash2.png)">
  <div class="container">
    <div class="fw pageHeader">
      <ul class="sul">
        <li class="title"><h1 class="titleX">{$pagetitle}</h1></li>
      </ul>
    </div><!--.pageHeader-->
  </div><!--.container-->
</div><!--.pageHeaderAll-->

<div class="alert alert-danger">
    <strong><i class="fas fa-gavel"></i> {$LANG.bannedyourip} {$ip} {$LANG.bannedhasbeenbanned}</strong>
    <ul>
        <li>{$LANG.bannedbanreason}: <strong>{$reason}</strong></li>
        <li>{$LANG.bannedbanexpires}: {$expires}</li>
    </ul>
</div>
