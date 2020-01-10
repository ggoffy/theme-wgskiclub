<{include file='db:wgnews_header.tpl'}>

<!-- if we are on the index page OR inside a category that has subcats OR (inside a category with no subcats 
	AND $display_category_summary is set to TRUE), let's display the summary table ! //-->

<{if $indexpage || $category.subcats || ($category && $display_category_summary)}>

	<{if $display_category_summary && $category}>
	   	<div class="well well-sm">
	   		<{$lang_category_summary}>
	   	</div>
   	<{/if}>


	<{include file='db:wgnews_categories_table.tpl'}>
	<!-- End of if !$category || $category.subcats || ($category && $display_category_summary) //-->
<{/if}>

<{if $items}>    
	
	<h4 class="pub_last_articles_full"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;<{$lang_items_title}></h4>

	<div class="row">

	<!-- Start item loop -->    
	<{foreach item=item from=$items}>

		<div class="col-sm-6 col-md-6 col-lg-6 mt-4">
            <div class="card">
                <img class="card-img-top" src="<{$item.image_path}>" alt="<{$item.title}>">
                <div class="card-block">
                    <h4 class="card-title"><{$item.titlelink}></h4>
                    <{if $display_whowhen_link}>
						<div class="meta">
						
						</div>
					<{/if}>
					<!--
					<div class="card-text">
                        <{$item.summary}>
                    </div>
					-->
                </div>
                <div class="card-footer">
                    <small><{$item.who_when}></small>
                    <button  onclick="window.location.href='<{$item.itemurl}>'" class="btn btn-secondary float-right btn-sm">Lesen</button>
                </div>
            </div>
        </div>
		<!--
		<div class="article_full">
			<div class="article_full_category">
				<{$item.category}>
			</div>
			
			<{if $item.image_path}>
			<div class="article_full_img_div">
				<a href="<{$item.itemurl}>" title="<{$item.title}>">
					<img src="<{$item.image_path}>" alt="<{$item.title}>" />
				</a>		
			</div>
			 <{/if}>
			<div style="padding: 10px;">
				<h4><{$item.titlelink}></h4>
				<{if $display_whowhen_link}>
					<small><{$item.who_when}> (<{$item.counter}> <{$lang_reads}>)</small>
				<{/if}>
				<div style="margin-top:10px;">
				<{$item.summary}>
				</div>
				<div class="pull-left" style="margin-top: 15px;">
					<{if $op <> 'preview'}>
			            	<span style="float: right; text-align: right;"><{$item.adminlink}></span> 
			            <{else}>
			            <span style="float: right;">&nbsp;</span> 
			           	<{/if}>
				</div>
				<div class="pull-right" style="margin-top: 15px;">
				 <a href="<{$item.itemurl}>" class="btn btn-primary btn-xs"> <{$smarty.const._MD_WGNEWS_VIEW_MORE}></a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		-->
		<!--<{include file="db:wgnews_singleitem.tpl" item=$item}>-->
	<{/foreach}>
	<!-- End item loop -->
	</div>	
	<!-- end of if $items -->

<{/if}>

<{include file='db:wgnews_footer.tpl'}>
