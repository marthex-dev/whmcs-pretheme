
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




<form role="form" method="post" action="{routePath('knowledgebase-search')}">
    <div class="input-group input-group-lg kb-search">
        <input type="text" id="inputKnowledgebaseSearch" name="search" class="form-control" placeholder="{$LANG.clientHomeSearchKb}" />
        <span class="input-group-btn">
            <input type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary btn-input-padded-responsive" value="{$LANG.search}" />
        </span>
    </div>
</form>

<h2>{$LANG.knowledgebasecategories}</h2>

{if $kbcats}
    <div class="row kbcategories">
        {foreach from=$kbcats name=kbcats item=kbcat}
            <div class="col-sm-4">
                <a href="{routePath('knowledgebase-category-view', {$kbcat.id}, {$kbcat.urlfriendlyname})}">
                    <i class="far fa-folder-open"></i>
                    {$kbcat.name} ({$kbcat.numarticles})
                </a>
                {if $kbcat.editLink}
                    <a href="{$kbcat.editLink}" class="admin-inline-edit">
                        <i class="fas fa-pencil-alt fa-fw"></i>
                        {$LANG.edit}
                    </a>
                {/if}
                <p>{$kbcat.description}</p>
            </div>
            {if $smarty.foreach.kbcats.iteration mod 3 == 0}
                </div><div class="row">
            {/if}
        {/foreach}
    </div>
{else}
    {include file="$template/includes/alert.tpl" type="info" msg=$LANG.knowledgebasenoarticles textcenter=true}
{/if}

{if $kbmostviews}

    <h2>{$LANG.knowledgebasepopular}</h2>

    <div class="kbarticles">
        {foreach from=$kbmostviews item=kbarticle}
            <a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}">
                <span class="glyphicon glyphicon-file"></span>&nbsp;{$kbarticle.title}
            </a>
            {if $kbarticle.editLink}
                <a href="{$kbarticle.editLink}" class="admin-inline-edit">
                    <i class="fas fa-pencil-alt fa-fw"></i>
                    {$LANG.edit}
                </a>
            {/if}
            <p>{$kbarticle.article|truncate:100:"..."}</p>
        {/foreach}
    </div>

{/if}
