<{if $xoBlocks.canvas_left}>
    <section id="wgblocks_left" class="wgcontainer wgblocks_left">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <{foreach item=block from=$xoBlocks.canvas_left name=l_block}>
                    <aside class="wgblock_left">
                        <{if $block.title}><h3><{$block.title}></h3><{/if}>
                        <{$block.content}>
                    </aside>
                    <{if $smarty.foreach.l_block.iteration < $xoBlocks.canvas_left|@count && !$smarty.foreach.l_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                <{/foreach}>
            </div>
        </div>
        <div class="clear"></div>
    </section>
<{/if}>
