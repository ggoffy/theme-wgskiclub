<{if $xoBlocks.page_topleft}>
    <section class="parallax" id="parallax-bcl" data-image-src="<{xoImgUrl}>images/parallax1.jpg">
        <div class="wgcontainer wgblocks_topleft">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <{foreach item=block from=$xoBlocks.page_topleft name=tl_block}>
                        <aside class="wgblock_topleft">
                            <{if $block.title}><h3><{$block.title}></h3><{/if}>
                            <{$block.content}>
                        </aside>
                        <{if $smarty.foreach.tl_block.iteration < $xoBlocks.page_topleft|@count && !$smarty.foreach.tl_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                    <{/foreach}>
                </div>
            </div>
            <div class="clear"></div>
        </div>   
    </section>
<{/if}>
