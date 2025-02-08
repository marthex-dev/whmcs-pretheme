
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


{if $reason eq "supportandupdates"}

    {include file="$template/includes/alert.tpl" type="error" msg="{$LANG.supportAndUpdatesExpiredLicense}{if $licensekey}: {$licensekey}{else}.{/if}" textcenter=true}

{/if}

{if $reason eq "supportandupdates"}

    <p>{$LANG.supportAndUpdatesRenewalRequired}</p>

    <form action="{$systemsslurl}cart.php?a=add" method="post">
        <input type="hidden" name="productid" value="{$serviceid}" />
        <input type="hidden" name="aid" value="{$addonid}" />
        <p align="center"><input type="submit" value="{$LANG.supportAndUpdatesClickHereToRenew} &raquo;" class="btn" /></p>
    </form>

{else}

    <p>{$LANG.downloadproductrequired}</p>

    {if $prodname}
        {include file="$template/includes/alert.tpl" type="info" msg=$prodname textcenter=true}
    {else}
        {include file="$template/includes/alert.tpl" type="info" msg=$addonname textcenter=true}
    {/if}

    {if $pid || $aid}
        <form action="{$systemsslurl}cart.php" method="post">
            {if $pid}
                <input type="hidden" name="a" value="add" />
                <input type="hidden" name="pid" value="{$pid}" />
            {elseif $aid}
                <input type="hidden" name="gid" value="addons" />
            {/if}
            <p align="center"><input type="submit" value="{$LANG.ordernowbutton} &raquo;" class="btn" /></p>
        </form>
    {/if}

{/if}
