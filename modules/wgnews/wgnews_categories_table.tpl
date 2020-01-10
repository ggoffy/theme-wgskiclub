<div class="row clearfix wgnews-cat">
    <{foreach item=category from=$categories}>
        <div class="btn-group" role="group">
            <button type="button" class="info btn btn-labeled btn-default">
                <span class="btn-label">
                    <{if $category.image_path}>
                        <img class="wgnews-catimage" src="<{$category.image_path}>" title="<{$category.name}>">
                    <{else}>
                        <i class="glyphicon glyphicon-paperclip"></i>&nbsp;
                    <{/if}>
                </span>
                <{if $selected_category == $category.categoryid}>
                    <{$category.name}>
                <{else}>
                    <{$category.categorylink}>
                <{/if}>
            </button>                
            <{if $category.subcats || $category.description}>
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <span class="glyphicon glyphicon-menu-down"></span>
                </button>
                <ul class="dropdown-menu">
                    <{if $category.description}>
                        <li class="wgnews-catdescr"><{$category.description}></li>
                        <li role="separator" class="divider"></li>
                    <{/if}>
                    <{foreach item=subcat from=$category.subcats}>
                        <li><{$subcat.categorylink}></li>
                    <{/foreach}>
                </ul>
            <{/if}>
        </div>
    <{/foreach}>
</div>
<hr>
