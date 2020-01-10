<{if $xoBlocks.page_topright}>
    <section class="parallax" id="parallax-bcr" data-image-src="<{xoImgUrl}>images/parallax2.jpg">
        <div id="wgblocks_topright" class="wgcontainer wgblocks_topright">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <{foreach item=block from=$xoBlocks.page_topright name=cr_block}>
                        <aside class="wgblock_topright">
                            <{if $block.title}><h3><{$block.title}></h3><{/if}>
                            <{$block.content}>
                        </aside>
                        <{if $smarty.foreach.cr_block.iteration < $xoBlocks.page_topright|@count && !$smarty.foreach.cr_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                    <{/foreach}>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>
<{/if}>
