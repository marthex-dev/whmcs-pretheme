
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

<div class="kb-article-title">
    <a href="#" class="btn btn-link btn-print" onclick="window.print();return false"><i class="fas fa-print"></i></a>
    <h2>{$kbarticle.title}</h2>
</div>

{if $kbarticle.voted}
    {include file="$template/includes/alert.tpl" type="success alert-bordered-left" msg="{lang key="knowledgebaseArticleRatingThanks"}" textcenter=true}
{/if}

<div class="kb-article-content">
    {$kbarticle.text}
</div>

{if $kbarticle.editLink}
    <a href="{$kbarticle.editLink}" class="btn btn-default btn-sm pull-right">
        <i class="fas fa-pencil-alt fa-fw"></i>
        {$LANG.edit}
    </a>
{/if}

<ul class="kb-article-details">
    {if $kbarticle.tags }
        <li><i class="fas fa-tag"></i> {$kbarticle.tags}</li>
    {/if}
    <li><i class="fas fa-star"></i> {$kbarticle.useful} {$LANG.knowledgebaseratingtext}</li>
</ul>
<div class="clearfix"></div>

<div class="kb-rate-article hidden-print">
    <form action="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}" method="post">
        <input type="hidden" name="useful" value="vote">
        {if $kbarticle.voted}{$LANG.knowledgebaserating}{else}{$LANG.knowledgebasehelpful}{/if}
        {if $kbarticle.voted}
            {$kbarticle.useful} {$LANG.knowledgebaseratingtext} ({$kbarticle.votes} {$LANG.knowledgebasevotes})
        {else}
            <button type="submit" name="vote" value="yes" class="btn btn-lg btn-link"><i class="far fa-thumbs-up"></i> {$LANG.knowledgebaseyes}</button>
            <button type="submit" name="vote" value="no" class="btn btn-lg btn-link"><i class="far fa-thumbs-down"></i> {$LANG.knowledgebaseno}</button>
        {/if}
    </form>
</div>

{if $kbarticles}
    <div class="kb-also-read">
        <h3>{$LANG.knowledgebaserelated}</h3>
        <div class="kbarticles">
            {foreach key=num item=kbarticle from=$kbarticles}
                <div>
                    <a href="{routePath('knowledgebase-article-view', {$kbarticle.id}, {$kbarticle.urlfriendlytitle})}">
                        <i class="glyphicon glyphicon-file"></i> {$kbarticle.title}
                    </a>
                    {if $kbarticle.editLink}
                        <a href="{$kbarticle.editLink}" class="admin-inline-edit">
                            <i class="fas fa-pencil-alt fa-fw"></i>
                            {$LANG.edit}
                        </a>
                    {/if}
                    <p>{$kbarticle.article|truncate:100:"..."}</p>
                </div>
            {/foreach}
        </div>
    </div>
{/if}
