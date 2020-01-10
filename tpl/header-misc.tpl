<div class="navbar-wrapper">
    <div id='navbar-misc' class="navbar navbar-inverse navbar-fixed-top global-nav navbar-shrink ">
        <div class="container">
            <div class="navbar-header">
                <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="<{$xoops_url}>" class="navbar-brand logo-shrink" title="<{$xoops_sitename}>">
                    <img id='logo-misc' class='nav-logo-shrink ' src="<{$xoops_imageurl}>images/logo-header-small.png" alt="<{$xoops_sitename}>">
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul id='navbar-items-misc' class="nav navbar-nav navbar-items-shrink navbar-right">
                    <li class='<{if $xoops_dirname == "system"}>active<{/if}>'><a href="<{$xoops_url}>/?scroll=top"><{$smarty.const.THEME_HOME}></a></li>
                    <!-- begin custom menus - customize these for your system -->
                    <li class="<{if $xoops_dirname == "wgnews"}>active<{/if}>"><a href="<{$xoops_url}>/?scroll=news"><{$smarty.const.THEME_MODULE6}></a></li>
                    <li class='dropdown <{if $xoops_dirname == "apcal"}>active<{/if}>'>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="<{$xoops_url}>/?scroll=coming_schedule"><{$smarty.const.THEME_MODULE9}><b class="caret"></b></a>
                        <ul id="navbar-account-menu" class="dropdown-menu">
                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/apcal/?smode=List">Alle</a></li>
                            <li class="divider"></li>
                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/apcal/?cid=2&smode=List">Skikurse</a></li>
                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/apcal/?cid=3&smode=List">Ausfahrten</a></li>
                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/apcal/?cid=1&smode=List">Sonstiges</a></li>
                        </ul>
                    </li>
                    <li class='<{if $xoops_dirname == "wggallery"}>active<{/if}>'><a href="<{$xoops_url}>/?scroll=gallery"><{$smarty.const.THEME_MODULE12}></a></li>
                    <li class='<{if $xoops_dirname == "wgteams"}>active<{/if}>'><a href="<{$xoops_url}>/?scroll=team"><{$smarty.const.THEME_MODULE5}></a></li>
                    <li class='dropdown <{if $xoops_dirname == "contact"}>active<{/if}>'>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;"><{$smarty.const.THEME_MODULE4}><b class="caret"></b></a>
                        <ul id="navbar-account-menu" class="dropdown-menu">
                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/contact/">Kontaktformular</a></li>
                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wginfos/item.php?itemid=1">Mitgliedschaft</a></li>
                        </ul>
                    </li>
                    <!-- end custom menus -->
					<li class='dropdown <{if $xoops_dirname == "profile"}>active<{/if}>'><a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;"><{$smarty.const.THEME_ACCOUNT}><{xoInboxCount assign="unreadCount"}> <{if $unreadCount > 0}><span class="badge"><{$unreadCount}></span><{/if}><b class="caret"></b></a>
                        <ul id="navbar-account-menu" class="dropdown-menu">
                            <{if $xoops_isuser|default:false}>
                                <{if $xoops_isadmin|default:false}>
                                    <li><a href="<{$xoops_url}>/admin.php"><{$smarty.const.THEME_ACCOUNT_ADMIN}></a></li>
                                    <li class="dropdown-submenu">
                                        <a href="<{$xoops_url}>/modules/wggallery/" class="dropdown-toggle" data-toggle="dropdown"><{$smarty.const.THEME_WGG_MAIN}></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wggallery/index.php"><{$smarty.const.THEME_INDEX}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wggallery/albums.php"><{$smarty.const.THEME_WGG_MANAGE_ALBUM}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wggallery/images.php"><{$smarty.const.THEME_WGG_MANAGE_IMAGE}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wggallery/albums.php?op=new"><{$smarty.const.THEME_WGG_NEW_ALBUM}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wggallery/upload.php"><{$smarty.const.THEME_WGG_IMAGE_UPLOAD}></a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="<{$xoops_url}>/modules/apcal/index.php"><{$smarty.const.THEME_APCAL_MAIN}></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/apcal/index.php"><{$smarty.const.THEME_INDEX}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/apcal/index.php?smode=Daily&action=Edit"><{$smarty.const.THEME_APCAL_NEW}></a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="<{$xoops_url}>/modules/wgnews/" class="dropdown-toggle" data-toggle="dropdown"><{$smarty.const.THEME_WGNEWS_MAIN}></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wgnews/index.php"><{$smarty.const.THEME_INDEX}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/modules/wgnews/submit.php?op=add"><{$smarty.const.THEME_WGNEWS_NEW}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/"><{$smarty.const.THEME_WGNEWS_SEARCH}></a></li>
                                            <li><a class="dropdown-menu-link" href="<{$xoops_url}>/"><{$smarty.const.THEME_WGNEWS_ARCHIVE}></a></li>
                                        </ul>
                                    <li class="divider"></li>
                                <{/if}>
                                <li><a class="dropdown-menu-link" href="<{$xoops_url}>/user.php"><{$smarty.const.THEME_ACCOUNT_EDIT}></a></li>
                                <li><a class="dropdown-menu-link" href="<{$xoops_url}>/viewpmsg.php"><{$smarty.const.THEME_ACCOUNT_MESSAGES}> <{if $unreadCount > 0}><span class="badge"><{$unreadCount}></span><{/if}></a></li>
                                <li><a class="dropdown-menu-link" href="<{$xoops_url}>/notifications.php"><{$smarty.const.THEME_ACCOUNT_NOTIFICATIONS}></a></li>
                                <li><a class="dropdown-menu-link" href="<{$xoops_url}>/user.php?op=logout"><{$smarty.const.THEME_ACCOUNT_LOGOUT}></a></li>
                            <{else}>
                                <li><a class="dropdown-menu-link" href="<{$xoops_url}>/user.php?xoops_redirect=<{$xoops_requesturi}>"><{$smarty.const.THEME_ACCOUNT_LOGIN}></a></li>
                                <li><a class="dropdown-menu-link" href="<{$xoops_url}>/register.php"><{$smarty.const.THEME_ACCOUNT_REGISTER}></a></li>
                            <{/if}>
                            
                        </ul>
                    </li>
                    <li class="social-info social-info-first"><a href="https://www.facebook.com/groups/186699840969/" title="Skiclub Schardenberg - Facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- .navbar-wrapper -->
<!-- Header misc -->
<header id='top' class='header-misc'>  
    <div class="container container-header-misc text-vertical-center">
        
    </div>  
</header>