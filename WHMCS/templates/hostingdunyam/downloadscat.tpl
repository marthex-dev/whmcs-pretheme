
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


<form role="form" method="post" action="{routePath('download-search')}">
    <div class="input-group input-group-lg kb-search margin-bottom">
        <input type="text" name="search" id="inputDownloadsSearch" class="form-control" placeholder="{$LANG.downloadssearch}" value="{$search}" />
        <span class="input-group-btn">
            <input type="submit" id="btnDownloadsSearch" class="btn btn-primary btn-input-padded-responsive" value="{$LANG.search}" />
        </span>
    </div>
</form>

<p>{$LANG.downloadsintrotext}</p>

{if $dlcats}

    <h2>{$LANG.knowledgebasecategories}</h2>

    <div class="row">
        {foreach $dlcats as $dlcat}
            <div class="col-sm-6">
                <a href="{routePath('download-by-cat', $dlcat.id, $dlcat.urlfriendlyname)}">
                    <i class="far fa-folder-open"></i>
                    <strong>{$dlcat.name}</strong>
                </a>
                ({$dlcat.numarticles})
                <br>
                {$dlcat.description}
            </div>
        {foreachelse}
            <div class="col-sm-12">
                <p class="text-center fontsize3">{$LANG.downloadsnone}</p>
            </div>
        {/foreach}
    </div>
{/if}

<h2>{$LANG.downloadsfiles}</h2>

<div class="list-group">
    {foreach $downloads as $download}
        <a href="{$download.link}" class="list-group-item">
            <strong>
                <i class="fas fa-download"></i>
                {$download.title}
                {if $download.clientsonly}
                    <i class="fas fa-lock text-muted"></i>
                {/if}
            </strong>
            <br>
            {$download.description}
            <br>
            <small>{$LANG.downloadsfilesize}: {$download.filesize}</small>
        </a>
    {foreachelse}
        <span class="list-group-item text-center">
            {$LANG.downloadsnone}
        </span>
    {/foreach}
</div>
