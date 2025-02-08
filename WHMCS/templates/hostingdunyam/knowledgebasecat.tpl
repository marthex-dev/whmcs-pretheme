
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
        <input type="text"  id="inputKnowledgebaseSearch" name="search" class="form-control" placeholder="{$LANG.clientHomeSearchKb}" value="{$searchterm}" />
        <span class="input-group-btn">
            <input type="submit" id="btnKnowledgebaseSearch" class="btn btn-primary btn-input-padded-responsive" value="{$LANG.search}" />
        </span>
    </div>
</form>

{if $kbcats}
    <h2>{$LANG.knowledgebasecategories}</h2>

    <div class="row kbcategories">
        {foreach name=kbasecats from=$kbcats item=kbcat}
            <div class="col-sm-4">
                <a href="{routePath('knowledgebase-category-view',{$kbcat.id},{$kbcat.urlfriendlyname})}">
                    <span class="glyphicon glyphicon-folder-close"></span> {$kbcat.name} <span class="badge badge-info">{$kbcat.numarticles}</span>
                </a>
                {if $kbcat.editLink}
                    <a href="{$kbcat.editLink}" class="admin-inline-edit">
                        <i class="fas fa-pencil-alt fa-fw"></i>
                        {$LANG.edit}
                    </a>
                {/if}
                <p>{$kbcat.description}</p>
            </div>
        {/foreach}
    </div>
{/if}

{if $kbarticles || !$kbcats}
    {if $tag}
        <h2>{$LANG.kbviewingarticlestagged} '{$tag}'</h2>
    {else}
        <h2>{$LANG.knowledgebasearticles}</h2>
    {/if}

    <div class="kbarticles">
        {foreach from=$kbarticles item=kbarticle}
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
        {foreachelse}
            {include file="$template/includes/alert.tpl" type="info" msg=$LANG.knowledgebasenoarticles textcenter=true}
        {/foreach}
    </div>
{/if}
