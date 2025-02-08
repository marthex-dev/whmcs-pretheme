
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

{if $announcementsFbRecommend}
    <script>
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/{$LANG.locale}/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
{/if}
{foreach from=$announcements item=announcement}

    <div class="announcement-single">

        <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="title">
            {$announcement.title}
        </a>

        {if $announcement.text|strip_tags|strlen < 350}
            <p>{$announcement.text}</p>
        {else}
            <p>{$announcement.summary}
            <a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="label label-warning">{$LANG.readmore} &raquo;</a>
            </p>
        {/if}

        <div class="article-items">
            <i class="fas fa-calendar-alt fa-fw"></i>
            {$carbon->createFromTimestamp($announcement.timestamp)->format('jS M Y')}
            {if $announcement.editLink}
                <a href="{$announcement.editLink}" class="admin-inline-edit">
                    <i class="fas fa-pencil-alt fa-fw"></i>
                    {$LANG.edit}
                </a>
            {/if}
        </div>

        {if $announcementsFbRecommend}
            <div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
            <div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
        {/if}

    </div>

{foreachelse}

    {include file="$template/includes/alert.tpl" type="info" msg="{$LANG.noannouncements}" textcenter=true}

{/foreach}

{if $prevpage || $nextpage}

    <div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
        <form class="form-inline" role="form">
            <div class="form-group">
                <div class="input-group">
                    {if $prevpage}
                        <span class="input-group-btn">
                            <a href="{routePath('announcement-index-paged', $prevpage, $view)}" class="btn btn-default">&laquo; {$LANG.previouspage}</a>
                        </span>
                    {/if}
                    <input class="form-control" style="text-align: center;" value="{$LANG.page} {$pagenumber}" disabled="disabled">
                    {if $nextpage}
                        <span class="input-group-btn">
                            <a href="{routePath('announcement-index-paged', $nextpage, $view)}" class="btn btn-default">{$LANG.nextpage} &raquo;</a>
                        </span>
                    {/if}
                </div>
            </div>
        </form>
    </div>
{/if}
