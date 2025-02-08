
<div class="fw pageHeaderAll cover" style="background-image:url(templates/{$template}/assets/images/dash2.png)">
  <div class="container">
    <div class="fw pageHeader">


  
<div class="container">
    <div class="loginBox wow fadeInUp" style=" ">
      <div class="fw loginBoxDiv">
        <div class="fw loginBoxForm">


          <div class="logincontainer">
    {include file="$template/includes/pageheader.tpl" title=$LANG.pwreset}

    {if $loggedin && $innerTemplate}
        {include file="$template/includes/alert.tpl" type="error" msg=$LANG.noPasswordResetWhenLoggedIn textcenter=true}
    {else}
        {if $successMessage}
            {include file="$template/includes/alert.tpl" type="success" msg=$successTitle textcenter=true}
            <p>{$successMessage}</p>
        {else}
            {if $errorMessage}
                {include file="$template/includes/alert.tpl" type="error" msg=$errorMessage textcenter=true}
            {/if}

            {if $innerTemplate}
                {include file="$template/password-reset-$innerTemplate.tpl"}
            {/if}
        {/if}
    {/if}
</div>
</div></div></div></div>