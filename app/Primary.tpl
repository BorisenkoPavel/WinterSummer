{strip}

    {include file='common.head.tpl'}
    
    {include file='common.header.tpl'}
    
    {if $FrontSliderWidget}

        {$FrontSliderWidget}

    {else}
    <div class="main-banner min-width background-theme-color-1"{if $TemplateMainBanner} style="background-image: url('{$TemplateMainBanner}'); height: {$TemplateMainBannerHeight}px;"{/if}>
        <div class="fixed-width">
            <div style="margin-top: 70px;">

                {$TemplateMainBannerHTML}

            </div>
        </div>
    </div>
    {/if}

    {if $FrontImages}
    <div class="front-images min-width">
        <div class="fixed-width">

            {foreach from=$FrontImages item=FrontImage}
                
                {if $FrontImage.image}
                <div class="image-element pie" style="background-image: url('{$FrontImage.image}')">
                    
                    {if $FrontImage.text}
                    <span class="pie background-theme-color-2"><span>{$FrontImage.text}</span></span>
                    {/if}
                    
                    {if $FrontImage.link}
                    <a href="{$FrontImage.link}"{if $FrontImage.link_is_image} class="fancy" rel="fancybox"{/if}></a>
                    {/if}
                    
                </div>
                
                {/if}
            {/foreach}

        </div>
    </div>
    {/if}
    
    <div class="main-content min-width">
        <div class="fixed-width">
            
            {$HTML_BLOCK_FRONT_ABOUT}
            
        </div>
    </div>

    {$FeedbackFormStaticWidget}

    {include file='common.footer.tpl'}

{/strip}