<i id="news"></i>
<{if $block.category && $block.category.image_path != ''}>
    <div align="center">
    <a href="<{$block.category.categoryurl}>" title="<{$block.category.name}>"><img src="<{$block.category.image_path}>" width="185" height="80" alt="<{$block.category.name}>"></a>
    </div>
<{/if}>

<{if $block.display_type=='block'}>
    <{foreach item=item from=$block.items}>        <{include file="db:wgnews_singleitem_block.tpl" item=$item}>    <{/foreach}>
<{else}>    
    <div class="wgnews-groups">
        <{foreach item=item from=$block.items name=wgnews_items}>        
            <{if $item.summary != ''}>
                <div class="wgnews-group <{if $smarty.foreach.wgnews_items.iteration % 2 == 0}> wgnews-group-right<{else}> wgnews-group-left<{/if}> col-xs-12 col-sm-6 wgnews-item">
                    <div class="wgnews-itemPanel col-xs-12">
                        <div class="wgnews-itemHeader">
                            <div class="wgnews-itemTitle"><{$item.titlelink}></div>
                            <div class="wgnews-itemInfo">
                                <{if $block.display_whowhen_link}>
                                    <span class="glyphicon glyphicon-calendar" title="<{$smarty.const._MB_WGNEWS_DATE}>"></span><{$item.when}>
                                    <span class="glyphicon glyphicon-user" title="<{$smarty.const._MB_WGNEWS_POSTER}>"></span><{$item.who}>
                                <{/if}>
                                <{if $block.display_comment_link}>
                                    <span class="glyphicon glyphicon-comment" title="<{$smarty.const._MB_WGNEWS_COMMENTS}>"></span><{$item.comments}>
                                <{/if}>
                                <{if $block.display_reads}>
                                    <span class="glyphicon glyphicon-eye-open" title="<{$smarty.const._MB_WGNEWS_HITS}>"></span><{$item.counter}>
                                <{/if}>
                            </div>
                        </div>
                        <div class="wgnews-itemText">
                            <{if $item.image_path}>
                                <div class="wgnews-itemImage col-xs-12 col-sm-4">
                                    <a href="<{$item.itemurl}>">
                                        <img class="wgnews_item_image img-responsive " src="<{$item.image_path}>" align="right" alt="<{$item.clean_title}>" title="<{$item.clean_title}>">
                                    </a>
                                </div>
                                <div class="wgnews-itemSummary col-xs-12 col-sm-8">
                            <{else}>
                                <div class="wgnews-itemSummary col-xs-12 col-sm-12">
                            <{/if}> 
                                    <{$item.summary}>
                                </div>
                                <{if $item.truncated}>
                                    <div class="wgnews-itemFooter col-xs-12">
                                        <a class="btn btn-primary" href="<{$item.itemurl}>"><{$block.lang_readmore}></a>
                                    </div>
                                <{/if}>
                        </div>
                    </div>
                </div>
                <{if $smarty.foreach.wgnews_items.iteration % 2 == 0}>
                    <div class="clear"></div>
                <{/if}>
            <{/if}>    
        <{/foreach}>
    </div>
<{/if}>
<{if $block.lang_displaymore}>
    <div class="clear"></div>
    <p class="wgnews-displaymore center"><a class="btn btn-primary" href="<{$block.category.categoryurl}>" title="<{$block.lang_displaymore}>"><{$block.lang_displaymore}></a></p>
<{/if}>

<script type="text/javascript">
    $(document).ready(function() {
        $(".wgnews-itemSummary img").addClass("img-responsive");
        $(".wgnews-itemSummary img").addClass("img-rounded");
    });
</script>