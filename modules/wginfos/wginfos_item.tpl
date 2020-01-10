<{include file='db:wginfos_header.tpl'}>

<script src="<{xoAppUrl browse.php?Frameworks/jquery/jquery.js}>"></script>
<script src="<{$wginfos_url}>/assets/js/jquery.popeye-2.1.js"></script>
<script src="<{$wginfos_url}>/assets/js/wginfos.js"></script>

<link rel="stylesheet" type="text/css" href="<{$wginfos_url}>/assets/css/jquery.popeye.css">
<link rel="stylesheet" type="text/css" href="<{$wginfos_url}>/assets/css/jquery.popeye.style.css">
<link rel="stylesheet" type="text/css" href="<{$wginfos_url}>/assets/css/wginfos.css">

<div class="item">
    <h2><{$item.title}></h2>
    <{if $show_subtitle && $item.subtitle}>
        <h3><{$item.subtitle}></h3>
    <{/if}>
    <{if $display_whowhen_link}>
        <small><{$item.who_when}> (<{$item.counter}> <{$smarty.const._MD_WGINFOS_READS}>)</small>
    <{/if}>
    <div class="itemBody">

        <{*<{if $item.posterAvatar != 'blank.gif'}>*}>
        <{*<img class="wginfos_item_image" src="<{$xoops_url}>/uploads/<{$item.posterAvatar}>"  align="right" alt="<{$item.posterName}>" title="<{$item.posterName}>">*}>
        <{*<{/if}>*}>

        <{if $pagenav}>
            <div class="wginfos_pagenav_top"><{$smarty.const._MD_WGINFOS_PAGE}>: <{$pagenav}></div>
        <{/if}>
        <div class="itemText">
            <{if $item.image_path || $item.images}>
                <div class="ppy" id="ppy3">
                    <ul class="ppy-imglist">
                        <{if $item.image_path}>
                            <li>
                                <a href="<{$item.image_path}>">
                                    <img src="<{$item.image_thumb}>" alt="<{$item.image_name}>">
                                </a>
                            </li>
                        <{/if}>
                        <{foreach item=image from=$item.images}>
                            <li>
                                <a href="<{$image.path}>">
                                    <img src="<{$image.thumb}>" alt="<{$image.name}>">
                                </a>
                            </li>
                        <{/foreach}>
                    </ul>
                    <div class="ppy-outer">
                        <div class="ppy-stage">
                            <div class="ppy-nav">
                                <div class="nav-wrap">
                                    <a class="ppy-prev" title="<{$smarty.const._MD_WGINFOS_PREVIOUSIMG}>"><{$smarty.const._MD_WGINFOS_PREVIOUSIMG}></a>
                                    <a class="ppy-switch-enlarge" title="<{$smarty.const._MD_WGINFOS_ENLARGEIMG}>"><{$smarty.const._MD_WGINFOS_ENLARGEIMG}></a>
                                    <a class="ppy-switch-compact" title="<{$smarty.const._MD_WGINFOS_CLOSE}>"><{$smarty.const._MD_WGINFOS_CLOSE}></a>
                                    <a class="ppy-next" title="<{$smarty.const._MD_WGINFOS_NEXTIMG}>"><{$smarty.const._MD_WGINFOS_NEXTIMG}></a>
                                </div>
                            </div>

                            <div class="ppy-counter">
                                <strong class="ppy-current"></strong> <{$smarty.const._MD_WGINFOS_OF}>
                                <strong class="ppy-total"></strong>
                            </div>
                        </div>
                        <div class="ppy-caption">
                            <span class="ppy-text  blockTitle"></span>
                        </div>
                    </div>
                </div>
            <{/if}>
            <p><{$item.maintext}></p>
        </div>
        <div style="clear:both;"></div>
        <{if $item.embeded_files}>
            <div id="wginfos_embeded_files">
                <{foreach item=file from=$item.embeded_files}>
                    <div><{$file.content}></div>
                <{/foreach}>
            </div>
        <{/if}>
        <{if $pagenav}>
            <div class="wginfos_pagenav_bottom"><{$smarty.const._MD_WGINFOS_PAGE}>: <{$pagenav}></div>
        <{/if}>
        <{if $tagbar}>
            <p><{include file="db:tag_bar.tpl"}></p>
        <{/if}>
    </div>
    <{if $itemfooter}>
        <div class="wginfos_itemfooter"><{$itemfooter}></div>
    <{/if}>
    <div class="wginfos_pre_itemInfo">
        <div class="itemInfo" style="height: 14px;">
            <{if $display_comment_link && $item.cancomment}>
                <span style="float: left;">
                    <a href="<{$item.itemurl}>"><{$item.comments}> <{$smarty.const._MD_WGINFOS_COMMENTS}></a>
                </span>
            <{else}>
                <span style="float: left;">&nbsp;</span>
            <{/if}>
            <{if $perm_author_items && $item.uid != 0}>
                <span style="float: left; margin-left: 5px;"><a href="<{$wginfos_url}>/author_items.php?uid=<{$item.uid}>"><{$smarty.const._MD_WGINFOS_ITEMS_SAME_AUTHOR}></a></span>
            <{/if}>
            <span style="float: right; text-align: right;"><{$item.adminlink}></span>

            <div style="height: 0; display: inline; clear: both;"></div>
        </div>
    </div>
</div>
<br>

<{if $item.files}>
        <!-- BEGIN DYNAMIC BLOCK -->
        <{foreach item=file from=$item.files}>
            <a class="btn btn-primary col-xs-12" href="<{$wginfos_url}>/visit.php?fileid=<{$file.fileid}>" target="_blank">
                <{$file.name}>&nbsp;<{$smarty.const._MD_WGINFOS_DOWNLOAD_FILE}>
            </a>
            <{if $file.mod}>
                <a href="<{$wginfos_url}>/file.php?op=mod&fileid=<{$file.fileid}>">
                    <img src="<{$wginfos_url}>/assets/images/links/edit.gif" title="<{$smarty.const._CO_WGINFOS_EDITFILE}>" alt="<{$smarty.const._CO_WGINFOS_EDITFILE}>"></a>
                <a href="<{$wginfos_url}>/file.php?op=del&fileid=<{$file.fileid}>">
                    <img src="<{$wginfos_url}>/assets/images/links/delete.png" title="<{$smarty.const._CO_WGINFOS_DELETEFILE}>" alt="<{$smarty.const._CO_WGINFOS_DELETEFILE}>"></a>
            <{/if}>
        <{/foreach}> <!-- END DYNAMIC BLOCK -->
<{/if}>

<{if $other_items == "previous_next"}>
    <{if $previousItemLink || $nextItemLink}>
        <table class="outer">
            <tr>
                <td class="itemHead" colspan="2">
                    <strong><{$smarty.const._MD_WGINFOS_ITEMS_LINKS}></strong></td>
            </tr>
            <tr style="vertical-align: middle;">
                <td class="odd" width="50%" align="left">
                    <{if $previousItemLink}>
                        <a href="<{$previousItemUrl}>">
                            <img style="vertical-align: middle;" src="<{$wginfosImagesUrl}>/links/previous.gif" title="<{$smarty.const._MD_WGINFOS_PREVIOUS_ITEM}>"
                                 alt="<{$smarty.const._MD_WGINFOS_PREVIOUS_ITEM}>">
                        </a>
                        <{$previousItemLink}>
                    <{/if}>
                </td>
                <td class="odd" width="50%" align="right">
                    <{if $nextItemLink}> <{$nextItemLink}>
                        <a href="<{$nextItemUrl}>"><img style="vertical-align: middle;" src="<{$wginfosImagesUrl}>/links/next.gif" title="<{$smarty.const._MD_WGINFOS_NEXT_ITEM}>"
                                                        alt="<{$smarty.const._MD_WGINFOS_NEXT_ITEM}>"></a>
                    <{/if}>
                </td>
            </tr>
        </table>
    <{/if}>
<{elseif $other_items == 'all'}>
    <table border="0" width="90%" cellspacing="1" cellpadding="3" align="center" class="outer">
        <tr>
            <td align="left" class="itemHead" width='65%'>
                <strong><{$smarty.const._MD_WGINFOS_OTHER_ITEMS}></strong></td>
            <{if $display_date_col == 1}>
                <td align="center" class="itemHead" width="25%">
                    <strong><{$smarty.const._MD_WGINFOS_DATESUB}></strong></td>
            <{/if}>
            <{if $display_hits_col == 1}>
                <td align="center" class="itemHead" width="10%">
                    <strong><{$smarty.const._MD_WGINFOS_HITS}></strong></td>
            <{/if}>
        </tr>
        <!-- Start item loop -->
        <{foreach item=item from=$items}>
            <tr>
                <td class="even" align="left"><{$item.titlelink}></td>
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
    </table>
<{/if}>
<{if $rating_enabled}>
    <small><{$item.ratingbar}></small>
<{/if}>
<{include file='db:wginfos_footer.tpl'}>

<script type="text/javascript">
    <!--//<![CDATA[
    $wginfos(document).ready(function () {
        var options = {
            caption: 'permanent'
        };

        $wginfos('#ppy3').popeye(options);
    });
    //]]>-->
</script>
