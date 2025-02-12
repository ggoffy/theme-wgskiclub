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
 * @author      Antiques Promotion (http://www.antiquespromotion.ca)
 * @author      GIJ=CHECKMATE (PEAK Corp. http://www.peak.ne.jp/)
 */
 *}>

<{strip}>
    <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">
        <tr>
            <td class='calframe'>
                <{* HEADER *}>
                <br>
                <table border='0' cellspacing='0' cellpadding='0' style='width:100%;'>
                    <tr>
                        <td>
                            <{$cat_desc}><br><br>
                            <{$map}><br>
                            <{if $showSocial}>
                                <div class="socialNetworks">
                <span class="print">
                    <a href="<{$print_link}>" target="_blank">
                        <img src="<{$images_url}>/print.gif" alt="<{$alt_print}>" title="<{$alt_print}>" border="0"/>
                    </a>
                </span>
                                    <{if $showTellaFriend}>
                                        <span class="tellafriend">
                    <a href="" title="<{$smarty.const._APCAL_TELLAFRIEND}>"
                       onclick="window.open('<{$xoops_url}>/modules/apcal/tellafriend.php?url='+encodeURIComponent(location.href)+'&title='+encodeURIComponent(document.title), '<{$smarty.const._APCAL_TELLAFRIEND}>', 'toolbar=no, width=550, height=550'); return false;">
                        <img src="<{$xoops_url}>/modules/apcal/assets/images/tellafriend.png" height="20" width="20"
                             alt="<{$smarty.const._APCAL_TELLAFRIEND}>"
                             title="<{$smarty.const._APCAL_TELLAFRIEND}>"/>
                    </a>
                </span>
                                    <{/if}>
                                    <span class="delicious">
                    <a href="http://www.delicious.com/save" title="Delicious"
                       onclick="window.open('http://www.delicious.com/save?v=5&noui&jump=close&url='+encodeURIComponent(location.href)+'&title='+encodeURIComponent(document.title), 'delicious','toolbar=no,width=550,height=550'); return false;">
                        <img src="<{$xoops_url}>/modules/apcal/assets/images/delicious.png" height="20" width="20"
                             alt="Delicious" title="Delicious"/>
                    </a>
                </span>
                                    <span class="googleplus">
                    <script type="text/javascript" src="https://apis.google.com/js/plusone.js">{
                            '<{$smarty.const._APCAL_GPLUS_LNG}>'
                        }</script>
                    <g:plusone size="medium" count="false" href="<{$xoops_url}>/modules/APCal"></g:plusone>
                </span>
                                    <span class="linkedIn">
                    <script src="http://platform.linkedin.com/in.js" type="text/javascript"></script>
                    <script type="IN/Share" data-url="<{$xoops_url}>/modules/APCal"></script>
                </span>
                                    <span class="twitter">
                    <a href="https://twitter.com/share" class="twitter-share-button"
                       data-url="<{$xoops_url}>/modules/APCal" data-count="none">Tweet</a>
                    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
                </span>
                                    <span class="facebook">
                    <script type="text/javascript"
                            src="http://connect.facebook.net/<{$smarty.const._APCAL_FB_LNG}>/all.js#xfbml=1"></script>
                    <div class="fb-like" data-href="<{$xoops_url}>/modules/APCal" data-send="false"
                         data-layout="button_count" data-action="recommend" data-show-faces="false"></div>
                </span>
                                </div>
                            <{/if}>
                            <div class="share">
                                <a href="<{$xoops_url}>/modules/apcal/shareCalendar.php"
                                   title="<{$smarty.const._APCAL_SHARECALENDAR}>">
                                    <img src="<{$xoops_url}>/modules/apcal/assets/images/share.png"/>
                                    <span style="line-height: 32px; margin-bottom: 15px;"><{$smarty.const._APCAL_SHARECALENDAR}></span>
                                </a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap='nowrap' align='center' bgcolor='<{$calhead_bgcolor}>'>
                            <table border='0' cellspacing='0' cellpadding='0' width='100%' class='apcal-categoryform'>
                                <tr>

                                    <{* CATEGORY SELECT FORM *}>
                                    <td align='center' valign='middle' style='vertical-align:middle;'
                                        class='apcal-categoryform'>
                                        <{$categories_selform}>
                                    </td>

                                    <td width='8'>
                                        <img src='<{$images_url}>/spacer.gif' alt='' width='8' height='4'/>
                                    </td>

                                    <{* DATE DESCRIPTION *}>
                                    <td width='350' align='center' valign='middle' nowrap='nowrap'
                                        style='vertical-align:middle;'>
                                        <img src='<{$images_url}>/spacer.gif' alt='' width='350' height='4'/><br>
                                        <form class='apcalForm' action='<{$get_target}>?smode=List&amp;num=<{$num}>&amp;cid=<{$now_cid}>&amp;order=<{$order}>'
                                              method='POST' style='margin:0;'>
                                            <span style="font-size: medium; color: <{$calhead_color}>; "><span
                                                        class='calhead'><{$ymdo_selects}><input type='submit'
                                                                                                name='apcal_jumpcaldate'
                                                                                                value='<{$lang_button_jump}>'/></span></span>
                                            <br>
                                        </form>
                                        <img src='<{$images_url}>/spacer.gif' alt='' width='350' height='4'/>
                                    </td>

                                    <td align='right' valign='middle' style='vertical-align:middle;'>

                                        <{* ICONS *}>
                                        <img src='<{$images_url}>/spacer.gif' alt='' width='128' height='4'/><br>
                                        <a href='<{$YEARLYVIEW}>'><img src='<{$images_url}>/year_on.gif' border='0'
                                                                       width='30' height='24' alt='<{$alt_yearly}>'
                                                                       title='<{$alt_yearly}>'/></a>
                                        <a href='<{$MONTHLYVIEW}>'><img src='<{$images_url}>/month_on.gif' border='0'
                                                                        width='30' height='24' alt='<{$alt_monthly}>'
                                                                        title='<{$alt_monthly}>'/></a>
                                        <a href='<{$WEEKLYVIEW}>'><img src='<{$images_url}>/week_on.gif' border='0'
                                                                       width='30' height='24' alt='<{$alt_weekly}>'
                                                                       title='<{$alt_weekly}>'/></a>
                                        <a href='<{$DAILYVIEW}>'><img src='<{$images_url}>/day_on.gif' border='0'
                                                                      width='30' height='24' alt='<{$alt_daily}>'
                                                                      title='<{$alt_daily}>'/></a>

                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">

                <br>
                <hr/>

                <{if $num_rows > 1}>
                    <div>

                        <{if $for_print <> true}>

                            <{$lang_sortby}>&nbsp;&nbsp;
                            <{$lang_startdatetime}> (
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=start"><img
                                        src="<{$images_url}>/up.gif" border="0"
                                        align="middle" alt=""/></a>
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=start+DESC"><img
                                        src="<{$images_url}>/down.gif" border="0"
                                        align="middle" alt=""/></a>
                            )
                            <{$lang_lastmodified}> (
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=dtstamp"><img
                                        src="<{$images_url}>/up.gif" border="0"
                                        align="middle" alt=""/></a>
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=dtstamp+DESC"><img
                                        src="<{$images_url}>/down.gif" border="0"
                                        align="middle" alt=""/></a>
                            )
                            <{$lang_summary}> (
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=summary"><img
                                        src="<{$images_url}>/up.gif" border="0"
                                        align="middle" alt=""/></a>
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=summary+DESC"><img
                                        src="<{$images_url}>/down.gif" border="0"
                                        align="middle" alt=""/></a>
                            )
                            <{$lang_submitter}> (
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=uid"><img
                                        src="<{$images_url}>/up.gif" border="0" align="middle"
                                        alt=""/></a>
                            <a href="<{$get_target}>?smode=List&amp;cid=<{$now_cid}>&amp;caldate=<{$caldate}>&amp;op=<{$op}>&amp;order=uid+DESC"><img
                                        src="<{$images_url}>/down.gif" border="0"
                                        align="middle" alt=""/></a>
                            )
                            <br>
                        <{/if}>

                        <b><{$lang_cursortedby}> <{$lang_order}></b>
                    </div>
                    <hr/>
                <{/if}>

                <br>
            </td>
        </tr>
    </table>
    <form class='apcalForm' id='MainForm' name='MainForm' action='<{$mod_url}>/index.php' target='_blank' method='post' style='margin:0;'>
        <table width="100%" cellspacing="0" cellpadding="10" border="0">
            <tr>
                <td width="100%" align="center" valign="top">
                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                        <tr>
                            <td style='text-align:left;vertical-align:middle;width=33%;'><{$page_nav_info}></td>
                            <td style='text-align:center;vertical-align:middle;width:33%;'><{$page_nav}></td>
                            <td style='text-align:right;vertical-align:middle;width:34%;'>
                            </td>
                        </tr>
                    </table>
                    <table class='apcalEventlist' width='100%' class='outer' cellpadding='4' cellspacing='1'>
                        <tr valign='middle'>
                            <th class='head'></th>
                            <th class='head'><{$lang_summary}></th>
                            <{if $isAdmin || $showSubmitter}>
                                <th class='head'><{$lang_submitter}></th><{/if}>
                            <th class='head'><{$lang_startdatetime}></th>
                            <th class='head'><{$lang_enddatetime}></th>
                            
                            <{if $isAdmin}>
                                <th class='head'><{$lang_categories}></th>
                                <th class='head'><{$lang_rrule}></th>
                                <th class='head'><{$lang_admission}></th>
                            <{/if}>
                            <th class='head'><input type='checkbox' name='dummy'
                                                    onclick="with(document.MainForm){for(i=0;i<length;i++){if(elements[i].type=='checkbox'){elements[i].checked=this.checked;}}}"/>
                            </th>
                        </tr>
                        <!-- Start event loop -->
                        <{foreach item='event' from=$events}>
                            <tr>
                                <td class='<{$event.oddeven}>'><a href='<{$event.eventURL}>'><{$event.picture}></a></td>
                                <td class='<{$event.oddeven}>'>
                                    <a href='<{$event.eventURL}>'><{$event.summary}></a>
                                    <!--added by goffy-->
                                    <{if $event.regonline == 1}>&nbsp;<img src="<{$ro_image}>" height="15px"
                                                                           alt="<{$smarty.const._APCAL_RO_ONLINE_POSS}>"
                                                                           title="<{$smarty.const._APCAL_RO_ONLINE_POSS}>"><{/if}>
                                </td>
                                <{if $isAdmin || $showSubmitter}>
                                    <td class='<{$event.oddeven}>'><{$event.submitter_info}></td><{/if}>
                                <td class='<{$event.oddeven}>'><{$event.start_date_desc}><br><{$event.start_time_desc}>
                                </td>
                                <td class='<{$event.oddeven}>'><{$event.end_date_desc}><br><{$event.end_time_desc}></td>
                                <{if $isAdmin}>
                                    <td class='<{$event.oddeven}>'><{$event.maincat}></td>
                                    <td class='<{$event.oddeven}>'><{$event.rrule}></td>
                                    <td class='<{$event.oddeven}>' align='center'>
                                        <{$event.admission}>
                                        <{if $event.editable == true}>
                                            <a href='<{$get_target}>?smode=Daily&amp;action=Edit&amp;event_id=<{$event.id}>&amp;caldate=<{$caldate}>'>
                                                <img src='<{$images_url}>/addevent.gif' border='0' width='14' height='12' /><{$lang_editevent}>
                                            </a>
                                        <{/if}>
                                    </td>
                                 <{/if}>
                                <td class='<{$event.oddeven}>' align='right'><input type='checkbox' name='ids[]'
                                                                                    value='<{$event.target_id}>'/></td>
                            </tr>
                        <{/foreach}>
                        <!-- End event loop -->

                        <{if $user_can_output_ics }>
                            <tr>
                                <td colspan='7' align='right' class='head'>
                                    <{$lang_checkeditems}> &nbsp; <{$lang_icalendar_output}><input type='submit'
                                                                                                   name='output_ics_confirm'
                                                                                                   value='<{$lang_button_export}>'/>
                                </td>
                            </tr>
                        <{/if}>

                    </table>

                    <table border='0' cellspacing='0' cellpadding='0' width='570'>
                        <tr>
                            <td width='10'><img src='<{$images_url}>/spacer.gif' alt='' width='10' height='10'/></td>
                            <td width='100%' align='right'><{$apcal_copyright}></td>
                        </tr>
                        <{if $for_print <> true}>
                            <tr>
                                <td width='10'><img src='<{$images_url}>/spacer.gif' alt='' width='10' height='10'/>
                                </td>
                                <td width='100%' align='right'><a href="<{$print_link}>" target="_blank"><img
                                                src="<{$images_url}>/print.gif" alt="<{$alt_print}>"
                                                title="<{$alt_print}>"
                                                border="0"/></a></td>
                            </tr>
                        <{/if}>
                    </table>

                </td>
            </tr>
        </table>
    </form>
    <br>
    <br>
<{/strip}>

<{include file='db:system_notification_select.tpl'}>
