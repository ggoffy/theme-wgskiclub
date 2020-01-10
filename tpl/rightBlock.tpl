<{if $xoBlocks.canvas_right}>
    <section id="wgblocks_right" class="wgcontainer wgblocks_right">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <{foreach item=block from=$xoBlocks.canvas_right name=r_block}>
                    <aside class="wgblock_right">
                        <{if $block.title}><h3><{$block.title}></h3><{/if}>
                        <{$block.content}>
                    </aside>
                    <{if $smarty.foreach.r_block.iteration < $xoBlocks.canvas_right|@count && !$smarty.foreach.r_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                <{/foreach}>
            </div>
        </div>
        <div class="clear"></div>
    </section>
<{/if}>