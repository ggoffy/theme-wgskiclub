<div class="navbar-wrapper">
    <div id='navbar' class="navbar navbar-inverse navbar-fixed-top global-nav">
        <div class="container">
            <div class="navbar-header">
                <button id="nav-hamburger" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="<{$xoops_url}>" class="navbar-brand logo" title="<{$xoops_sitename}>">
                    <img id='logo' class='nav-logo' src="<{$xoops_imageurl}>images/logo-header-small.png" alt="<{$xoops_sitename}>">
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul id='navbar-items' class="nav navbar-nav navbar-items navbar-right">
                    <li class='<{if $xoops_dirname == "system"}>active<{/if}>'><a href="#top" data-toggle="collapse" data-target=".collapse"><{$smarty.const.THEME_HOME}></a></li>
                    <!-- begin custom menus - customize these for your system -->
                    <li class="<{if $xoops_dirname == "wgnews"}>active<{/if}>"><a href="#news" data-toggle="collapse" data-target=".collapse"><{$smarty.const.THEME_MODULE6}></a></li>
                    <li class='dropdown <{if $xoops_dirname == "apcal"}>active<{/if}>'>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:void(0);"><{$smarty.const.THEME_MODULE9}><b class="caret"></b></a>
                        <ul id="navbar-account-menu" class="dropdown-menu">
                            <li><a href="#coming_schedule" data-toggle='collapse' data-target=".collapse">Nächste Termine</a></li>
                            <li class="divider"></li>
                            <li><a href="<{$xoops_url}>/modules/apcal/?cid=2&smode=List">Skikurse</a></li>
                            <li><a href="<{$xoops_url}>/modules/apcal/?cid=3&smode=List">Ausfahrten</a></li>
                            <li><a href="<{$xoops_url}>/modules/apcal/?cid=1&smode=List">Sonstiges</a></li>
                            <li><a href="<{$xoops_url}>/modules/apcal/?smode=List">Alle</a></li>
                        </ul>
                    </li>
                    <li class='<{if $xoops_dirname == "wggallery"}>active<{/if}>'><a href="#gallery" data-toggle="collapse" data-target=".collapse"><{$smarty.const.THEME_MODULE12}></a></li>
                    <li class='<{if $xoops_dirname == "wgteams"}>active<{/if}>'><a href="#team" data-toggle="collapse" data-target=".collapse"><{$smarty.const.THEME_MODULE5}></a></li>
                    <li class='dropdown <{if $xoops_dirname == "contact"}>active<{/if}>'>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;"><{$smarty.const.THEME_MODULE4}><b class="caret"></b></a>
                        <ul id="navbar-account-menu" class="dropdown-menu">
                            <li><a href="<{$xoops_url}>/modules/contact/">Kontaktformular</a></li>
                            <li><a href="<{$xoops_url}>/modules/wginfos/item.php?itemid=1">Mitgliedschaft</a></li>
                        </ul>
                    </li>
                    <!-- end custom menus -->
					<li class='dropdown <{if $xoops_dirname == "profile"}>active<{/if}>'>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;"><{$smarty.const.THEME_ACCOUNT}><{xoInboxCount assign="unreadCount"}> <{if $unreadCount > 0}><span class="badge"><{$unreadCount}></span><{/if}><b class="caret"></b></a>
                        <ul id="navbar-account-menu" class="dropdown-menu">
                            <{if $xoops_isuser|default:false}>
                                <{if $xoops_isadmin|default:false}>
                                    <li><a href="<{$xoops_url}>/admin.php"><{$smarty.const.THEME_ACCOUNT_ADMIN}></a></li>
                                    <li class="dropdown-submenu">
                                        <a href="" class="dropdown-toggle" data-toggle="dropdown"><{$smarty.const.THEME_WGG_MAIN}></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<{$xoops_url}>/modules/wggallery/index.php"><{$smarty.const.THEME_INDEX}></a></li>
                                            <li><a href="<{$xoops_url}>/modules/wggallery/albums.php"><{$smarty.const.THEME_WGG_MANAGE_ALBUM}></a></li>
                                            <li><a href="<{$xoops_url}>/modules/wggallery/images.php"><{$smarty.const.THEME_WGG_MANAGE_IMAGE}></a></li>
                                            <li><a href="<{$xoops_url}>/modules/wggallery/albums.php?op=new"><{$smarty.const.THEME_WGG_NEW_ALBUM}></a></li>
                                            <li><a href="<{$xoops_url}>/modules/wggallery/upload.php"><{$smarty.const.THEME_WGG_IMAGE_UPLOAD}></a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="<{$xoops_url}>/modules/apcal/index.php"><{$smarty.const.THEME_APCAL_MAIN}></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<{$xoops_url}>/modules/apcal/index.php"><{$smarty.const.THEME_INDEX}></a></li>
                                            <li><a href="<{$xoops_url}>/modules/apcal/index.php?smode=Daily&action=Edit"><{$smarty.const.THEME_APCAL_NEW}></a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown-submenu">
                                        <a href="" class="dropdown-toggle" data-toggle="dropdown"><{$smarty.const.THEME_WGNEWS_MAIN}></a>
                                        <ul class="dropdown-menu">
                                            <li><a href="<{$xoops_url}>/modules/wgnews/index.php"><{$smarty.const.THEME_INDEX}></a></li>
                                            <li><a href="<{$xoops_url}>/modules/wgnews/submit.php?op=add"><{$smarty.const.THEME_WGNEWS_NEW}></a></li>
                                            <li><a href="<{$xoops_url}>/"><{$smarty.const.THEME_WGNEWS_SEARCH}></a></li>
                                            <li><a href="<{$xoops_url}>/"><{$smarty.const.THEME_WGNEWS_ARCHIVE}></a></li>
                                        </ul>
                                    <li class="divider"></li>
                                <{/if}>
                                <li><a href="<{$xoops_url}>/user.php"><{$smarty.const.THEME_ACCOUNT_EDIT}></a></li>
                                <li><a href="<{$xoops_url}>/viewpmsg.php"><{$smarty.const.THEME_ACCOUNT_MESSAGES}> <{if $unreadCount > 0}><span class="badge"><{$unreadCount}></span><{/if}></a></li>
                                <li><a href="<{$xoops_url}>/notifications.php"><{$smarty.const.THEME_ACCOUNT_NOTIFICATIONS}></a></li>
                                <li><a href="<{$xoops_url}>/user.php?op=logout"><{$smarty.const.THEME_ACCOUNT_LOGOUT}></a></li>
                                
                            <{else}>
                                <li><a href="<{$xoops_url}>/user.php?xoops_redirect=<{$xoops_requesturi}>"><{$smarty.const.THEME_ACCOUNT_LOGIN}></a></li>
                                <li><a href="<{$xoops_url}>/register.php"><{$smarty.const.THEME_ACCOUNT_REGISTER}></a></li>
                            <{/if}>
                            
                        </ul>
                    </li>
                    <li class="social-info social-info-first"><a href="https://www.facebook.com/groups/186699840969/" title="Skiclub Schardenberg - Facebook" target="_blank"><i class="fa fa-facebook"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!-- .navbar-wrapper -->
<!-- Header home -->
<header id='top' class='header-home parallax' data-image-src='<{xoImgUrl}>images/header-home.jpg'>  
    <div class='container-header-home'>
        <div class='header-home-logo center'> 
            <a href="#welcome" class='center'><img class='img-responsive center' src='<{xoImgUrl}>images/logo-header.png' alt='Logo' title='Logo' ></a>
        </div>
        <div class='center'>
            <a href="#welcome" class='scrollDown center'><img src='<{xoImgUrl}>images/down.png' alt='Welcome' title='Welcome' ></a>
        </div>
    </div>
</header>

