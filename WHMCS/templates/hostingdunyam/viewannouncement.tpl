
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

      <section id="main-body">
          <div class="container{if $skipMainBodyContainer}-fluid without-padding{/if}">
              <div class="row">

              {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
                  {if $primarySidebar->hasChildren() && !$skipMainBodyContainer}
                      <div class="col-md-9 pull-md-right">
                          {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                      </div>
                  {/if}
                  <div class="col-md-3 pull-md-left sidebar">
                      {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
                  </div>
              {/if}
              <!-- Container for main page display content -->
              <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
                  {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage' && !$skipMainBodyContainer}
                      {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                  {/if}



{if $twittertweet}
    <div class="pull-right">
        <a href="https://twitter.com/share" class="twitter-share-button" data-count="vertical" data-via="{$twitterusername}">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
    </div>
{/if}

{$text}

<br />
<br />

{if $editLink}
    <p>
        <a href="{$editLink}" class="btn btn-default btn-sm pull-right">
            <i class="fas fa-pencil-alt fa-fw"></i>
            {$LANG.edit}
        </a>
    </p>
{/if}

<p>
    <strong>{$carbon->createFromTimestamp($timestamp)->format('l, F j, Y')}</strong>
</p>

{if $facebookrecommend}
    <br />
    <br />
    {literal}
    <div id="fb-root">
    </div>
    <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    {/literal}
    <div class="fb-like" data-href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend">
    </div>
{/if}

{if $facebookcomments}
    <br />
    <br />
    {literal}
    <div id="fb-root">
    </div>
    <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {return;}
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    {/literal}
    <fb:comments href="{fqdnRoutePath('announcement-view', $id, $urlfriendlytitle)}" num_posts="5" width="500"></fb:comments>
{/if}

<p>
    <a href="{routePath('announcement-index')}" class="btn btn-default">{$LANG.clientareabacklink}</a>
</p>
