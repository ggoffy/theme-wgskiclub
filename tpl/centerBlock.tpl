<{if $xoBlocks.page_topcenter}>
    <section id="wgblocks_topcenter" class="wgcontainer wgblocks_topcenter">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <{foreach item=block from=$xoBlocks.page_topcenter name=tc_block}>
                    <aside class="wgblock_topcenter">
                        <{if $block.title}><h3><{$block.title}></h3><{/if}>
                        <{$block.content}>
                    </aside>
                    <{if $smarty.foreach.tc_block.iteration < $xoBlocks.page_topcenter|@count && !$smarty.foreach.tc_block.last}><div class="wgblock-divider">&nbsp;</div><{/if}>
                <{/foreach}>
            </div>
        </div>
        <div class="clear"></div>
    </section>
<{/if}>
