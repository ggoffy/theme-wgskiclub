<{if $xoBlocks.page_bottomright}>
    <section class="parallax" id="parallax-brb" data-image-src="<{xoImgUrl}>images/parallax3.jpg">
        <div id="wgblocks_bottomright" class="wgcontainer wgblocks_bottomright">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <{foreach item=block from=$xoBlocks.page_bottomright name=br_block}>
                        <aside class="wgblock_bottomright">
                            <{if $block.title}><h3><{$block.title}></h3><{/if}>
                            <{$block.content}>
                        </aside>
                        <{if $smarty.foreach.br_block.iteration < $xoBlocks.page_bottomright|@count && !$smarty.foreach.br_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                    <{/foreach}>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </section>
<{/if}>
