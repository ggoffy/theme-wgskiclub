<{include file='db:wgnews_header.tpl'}>

<!-- if we are on the index page OR inside a category that has subcats OR
 (inside a category with no subcats AND $display_category_summary is set to TRUE),
 let's display the summary table ! //-->
<{if $indexpage || $category.subcats || ($category && $display_category_summary)}>

    <!-- let's begin the display of the other display type -->
    <{if $collapsable_heading == 1}>
        <div class="wgnews_collaps_title">
            <a href='javascript:' onclick="toggle('toptable'); toggleIcon('toptableicon')"><img id='toptableicon' src='<{$wgnews_url}>/assets/images/links/close12.gif'
                                                                                                alt=''></a>&nbsp;<{$lang_category_summary}>
        </div>
        <div id='toptable'>
            <span class='wgnews_collaps_info'><{$lang_category_summary}></span>
        <!-- Content under the collapsable bar //-->
    <{/if}>

    <{include file='db:wgnews_categories_table.tpl'}>

    <{if $collapsable_heading == 1}>
        </div>
    <{/if}>
    <br>
    <!-- End of if !$category || $category.subcats || ($category && $display_category_summary) //-->
<{/if}>
<{if $items}>
    <{if $collapsable_heading == 1}>
        <div class="wgnews_collaps_title">
            <a href='javascript:' onclick="toggle('bottomtable'); toggleIcon('bottomtableicon')">
                <img id='bottomtableicon' src='<{$wgnews_url}>/assets/images/links/close12.gif' alt=''>
            </a>&nbsp;<{$lang_items_title}>
        </div>
        <div id='bottomtable'>
            <span class="wgnews_collaps_info"><{$smarty.const._MD_WGNEWS_ITEMS_INFO}></span>
    <{/if}>
    <div align="right"><{$navbar}></div>
    <table border="0" width="90%" cellspacing="1" cellpadding="3" align="center" class="outer">
        <tr>
            <td align="left" class="itemHead" width='60%'><strong><{$smarty.const._CO_WGNEWS_TITLE}></strong></td>
            <{if $display_date_col == 1}>
                <td align="center" class="itemHead" width="30%"><strong><{$smarty.const._MD_WGNEWS_DATESUB}></strong></td>
            <{/if}> <{if $display_hits_col == 1}>
                <td align="center" class="itemHead" width="10%"><strong><{$smarty.const._MD_WGNEWS_HITS}></strong></td>
            <{/if}>
        </tr>
        <!-- Start item loop -->
        <{foreach item=item from=$items}>
            <tr>
                <td class="even" align="left">
                    <strong><{$item.titlelink}></strong>
                    <{if $show_subtitle && $item.subtitle}>
                        <br>
                        <em><{$item.subtitle}></em>
                    <{/if}>
                </td>
                <{if $display_date_col == 1}>
                    <td class="odd" align="left">
                        <div align="center"><{$item.datesub}></div>
                    </td>
                <{/if}>
                <{if $display_hits_col == 1}>
                    <td class="odd" align="left">
                        <div align="center"><{$item.counter}></div>
                    </td>
                <{/if}>
            </tr>
        <{/foreach}> <!-- End item loop -->
        <tr></tr>
    </table>
    <div align="right"><{$navbar}></div>
    <{if $collapsable_heading == 1}>
        </div>
    <{/if}>
<{/if}><!-- end of if $items -->

<{include file='db:wgnews_footer.tpl'}>
