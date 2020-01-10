<{include file='db:wgnews_header.tpl'}>

<{if ($indexpage && $display_category_summary) || $category.subcats || ($category && $display_category_summary)}>

	<{if $display_category_summary && $category}>
	   	<div class="well well-sm">
	   		<{$lang_category_summary}>
	   	</div>
   	<{/if}>
	<{include file='db:wgnews_categories_table.tpl'}>
	<!-- End of if !$category || $category.subcats || ($category && $display_category_summary) //-->
<{/if}>
<h4 class="pub_last_articles_wf">
	<span class="glyphicon glyphicon-chevron-right"></span>&nbsp;<{$lang_items_title}>
</h4>
<div class="wgnews_items_list_">
    <{if $items}> 
           <{foreach item=item from=$items}>
				<div class="article_wf">
					<div class="article_wf_title">
					<h3><{$item.titlelink}></h3>
						<font>
							<span class="glyphicon glyphicon-tag"></span>&nbsp;<{$item.category}>
						</font>
						<font>
							<span class="glyphicon glyphicon-user"></span>&nbsp;<{$item.who}>
						</font>
						<font>
							<span class="glyphicon glyphicon-calendar"></span>&nbsp;<{$item.when}>
						</font>
						<font>
							<span class="glyphicon glyphicon-comment"></span>&nbsp;<{$item.comments}>
						</font>
                        <font>
							<span class="glyphicon glyphicon-ok-circle"></span>&nbsp;<{$item.counter}> <{$smarty.const._MD_WGNEWS_READS}>
						</font>
					</div>
					<{if $item.image_path}>
					<div class="article_wf_img">
						<img class="img-responsive" src="<{$item.image_path}>" alt="<{$item.title}>" />
					</div>
					<{/if}>
					<div class="article_wf_summary">
						<{$item.summary}>
					</div>
						<div class="pull-right" style="margin-top: 15px;">
					 <a href="<{$item.itemurl}>" class="btn btn-primary btn-xs"> <{$smarty.const._MD_WGNEWS_VIEW_MORE}></a>
					</div>
					<div class="clearfix"></div>
				</div>
                <div class="wgblock-divider">&nbsp;</div>
            <{/foreach}>
        </div>

        <div align="wgnews-navbar right"><{$navbar}></div>

        <{$press_room_footer}>


<{/if}>    
<!-- end of if $items --> 
    
<{include file='db:wgnews_footer.tpl'}>
