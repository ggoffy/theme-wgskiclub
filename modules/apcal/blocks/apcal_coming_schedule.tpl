<{*
/*
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**
 * @copyright    {@link http://xoops.org/ XOOPS Project}
 * @license      {@link http://www.gnu.org/licenses/gpl-2.0.html GNU GPL 2 or later}
 * @package
 * @since
 * @author       XOOPS Development Team,
 * @author       GIJ=CHECKMATE (PEAK Corp. http://www.peak.ne.jp/)
 * @author       Antiques Promotion (http://www.antiquespromotion.ca)
 */
 *}>

<script type="text/javascript" src="<{$xoops_url}>/modules/apcal/assets/images/js/highslide/highslide-with-gallery.js"></script>
<link rel="stylesheet" type="text/css" href="<{$xoops_url}>/modules/apcal/assets/images/js/highslide/highslide.css"/>
<script type="text/javascript">
    hs.graphicsDir = '<{$xoops_url}>/modules/apcal/assets/images/js/highslide/graphics/';
    hs.align = 'center';
    hs.transitions = ['expand', 'crossfade'];
    hs.outlineType = 'glossy-dark';
    hs.wrapperClassName = 'dark';
    hs.fadeInOut = true;

    // Add the controlbar
    if (hs.addSlideshow) hs.addSlideshow({
        interval: 5000,
        repeat: false,
        useControls: true,
        fixedControls: 'fit',
        overlayOptions: {
            opacity: .6,
            position: 'bottom center',
            hideOnMouseOut: true
        }
    });
</script>
<i id='coming_schedule'></i>
<{if $block.num_rows == 0}>
    <{$block.lang_APCAL_MB_NOEVENT}>
<{/if}>
<div class="cal-groups">
    <{foreach name=event item=event from=$block.events}>
        <div class="cal-group <{if $smarty.foreach.event.iteration % 2 == 0}> cal-group-right<{else}> cal-group-left<{/if}> col-xs-12 col-sm-6 cal-item">
            <div class="cal-itemPanel col-xs-12">
                <div class="cal-itemHeader col-xs-12">
                    <div class="cal-itemTitle">
                        <{if $event.extkey0 == 1}>
                            <img class='ro-flag' style='height:35px' src='<{$xoops_url}>/modules/apcal/assets/images/regonline/regonline.png' alt='<{$smarty.const._APCAL_RO_ONLINE_POSS}>' title='<{$smarty.const._APCAL_RO_ONLINE_POSS}>'/>
                        <{/if}>
                        <a href='<{$block.get_target}>?smode=Daily&amp;action=View&amp;event_id=<{$event.id}>&amp;caldate=<{$block.caldate}>'
                            class='cal-summary' title='<{$event.summary}>'><{$event.summary}>
                        </a>
                    </div>
                    <div class="cal-itemInfo">
                        <span class="cal-itemInfo-date glyphicon glyphicon-calendar" title="<{$smarty.const._MB_WGNEWS_DATE}>">
                            <{if $event.distance == 0}>
                                <{$block.lang_APCAL_MB_CONTINUING}> - <{$event.end_desc}>
                            <{elseif $event.distance == 1}>
                                <{$event.start_desc}> - <{$event.end_desc}>
                            <{elseif $event.distance == 2}>
                                <{$event.start_desc}><{if $event.multiday}> - <{$event.end_desc}><{/if}>
                            <{else}>
                                <{$event.start_desc}><{if $event.multiday}> - <{$event.end_desc}><{/if}>
                            <{/if}>
                        </span>
                        <{if $event.location}>
                            <br><span class="glyphicon glyphicon-map-marker" title="<{$smarty.const._MB_WGNEWS_COMMENTS}>"></span><{$event.location}>
                        <{/if}>
                        <{if $event.mainCat}>
                            <br><span class="glyphicon glyphicon-tag" title="<{$smarty.const._MB_WGNEWS_COMMENTS}>"></span><{$event.mainCat}>
                        <{/if}>
                        <{if $event.contact}>
                            <br><span class="glyphicon glyphicon-user" title="<{$smarty.const._MB_WGNEWS_COMMENTS}>"></span><{$event.contact}>
                        <{/if}>
                    </div>
                </div>
                <{if $event.description || $block.showPictures > 0}>
                    <div class="cal-itemText col-xs-12">
                        <{if $block.showPictures > 0 && $event.picture != ''}>
                            <a href="<{$xoops_upload_url}>/apcal/<{$event.picture}>" class="" title="<{$event.summary}>"
                               onclick="return hs.expand(this)">
                                <img src="<{$xoops_upload_url}>/apcal/thumbs/<{$event.picture}>" alt="<{$event.summary}>"
                                     title="<{$event.summary}>" class="img-responsive img-rounded left"/>
                            </a>
                        <{/if}>
                        <{$event.description}>
                    </div>
                <{/if}>
                <div class="cal-itemFooter col-xs-12">
                    <a class='btn btn-primary' href='<{$block.get_target}>?smode=List&amp;action=View&amp;event_id=<{$event.id}>&amp;caldate=<{$block.caldate}>' title='<{$event.summary}>'><{$smarty.const._MB_APCAL_READMORE}></a>
                    <{if $block.insertable <> false}>
                        <a class='btn btn-primary' href='<{$block.get_target}>?smode=List&action=Edit&event_id=<{$event.id}>&amp;caldate=<{$block.caldate}>' title='<{$event.summary}>'><{$smarty.const._MB_APCAL_EDIT}></a>
                    <{/if}>
                </div>
            </div>
        </div>
        <{if $smarty.foreach.event.iteration % 2 == 0}>
            <div class="clear"></div>
        <{/if}>
    <{/foreach}>
</div>
<div class="clear"></div>
<div class="cal-footer">
    <a class="btn btn-primary" href="<{$block.get_target}>"><{$smarty.const._MB_APCAL_SHOWCAL}></a>
    <{if $block.insertable <> false}>
        <a class='btn btn-primary' href='<{$block.get_target}>?smode=List&action=Edit&amp;caldate=<{$block.caldate}>' title='<{$event.summary}>'><{$block.lang_APCAL_MB_ADDEVENT}></a>
    <{/if}>
</div>
