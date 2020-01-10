<{if $block.category && $block.category.image_path != ''}>
    <div align="center">
        <a href="<{$block.category.categoryurl}>" title="<{$block.category.name}>"><img src="<{$block.category.image_path}>" width="185" height="80" alt="<{$block.category.name}>"></a>
    </div>
<{/if}>

<{if $block.display_type=='block'}>
    <{foreach item=item from=$block.items}><{include file="db:wginfos_singleitem_block.tpl" item=$item}><{/foreach}>
<{else}>
    <{foreach item=item from=$block.items name=spotlight}>
        <{if $item.summary != ''}>
            <div class="itemText" style="padding-left: 5px; padding-top: 5px;">
                <div>
                    <{if $item.image_path}>
                        <img class="wginfos_item_image" src="<{$item.image_path}>" align="right" alt="<{$item.clean_title}>" title="<{$item.clean_title}>">
                    <{/if}> <{$item.summary}>
                </div>
            </div>
            <div style="clear: both;"></div>
            <{if $item.showline}>
                <div style="font-size: 10px; text-align: right; border-bottom: 1px dotted #000000;"></div>
            <{/if}>
            <{if $block.truncate}>
                <div style="font-size: 10px; text-align: right;">
                    <a class="btn btn-primary" href="<{$item.itemurl}>"><{$block.lang_readmore}></a></div>
            <{/if}>
        <{/if}>
    <{/foreach}>
<{/if}>
<{if $block.lang_displaymore}>
    <div class="clear"></div>
    <div class="col-xs-12 right"><a class="btn btn-primary" href="<{$block.category.categoryurl}>" title="<{$block.lang_displaymore}>"><{$block.lang_displaymore}></a></div>
<{/if}>