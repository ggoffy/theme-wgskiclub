<{if $xoBlocks.page_bottomleft}>
    <section class="parallax" id="parallax-blb" data-image-src="<{xoImgUrl}>images/parallax1.jpg">
        <div id="wgblocks_bottomleft" class="wgcontainer wgblocks_bottomleft">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <{foreach item=block from=$xoBlocks.page_bottomleft name=bl_block}>
                        <aside class="wgblock_bottomleft">
                            <{if $block.title}><h3><{$block.title}></h3><{/if}>
                            <{$block.content}>
                        </aside>
                        <{if $smarty.foreach.bl_block.iteration < $xoBlocks.page_bottomleft|@count && !$smarty.foreach.bl_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                    <{/foreach}>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>
<{/if}>
