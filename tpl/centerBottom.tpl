<{if $xoBlocks.page_bottomcenter}>
    <section id="wgblocks_bottomcenter" class="wgcontainer wgblocks_bottomcenter">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <{foreach item=block from=$xoBlocks.page_bottomcenter name=bc_block}>
                    <aside class="wgblock_bottomcenter">
                        <{if $block.title}><h3><{$block.title}></h3><{/if}>
                        <{$block.content}>
                    </aside>
                    <{if $smarty.foreach.bc_block.iteration < $xoBlocks.page_bottomcenter|@count && !$smarty.foreach.bc_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                <{/foreach}>
            </div>
        </div>
        <div class="clear"></div>
    </section>
<{/if}>
