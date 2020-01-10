<!doctype html>
<html lang="<{$xoops_langcode}>">
<head>
<{assign var=theme_name value=$xoTheme->folderName}>
    <meta charset="<{$xoops_charset}>">
    <meta name="keywords" content="<{$xoops_meta_keywords}>">
    <meta name="description" content="<{$xoops_meta_description}>">
    <meta name="robots" content="<{$xoops_meta_robots}>">
    <meta name="rating" content="<{$xoops_meta_rating}>">
    <meta name="author" content="<{$xoops_meta_author}>">
    <meta name="generator" content="XOOPS">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Owl Carousel Assets -->
    <link href="<{xoImgUrl}>js/owl/assets/owl.carousel.css" rel="stylesheet">
    <link href="<{xoImgUrl}>js/owl/assets/owl.theme.default.css" rel="stylesheet">

    <link href="<{$xoops_url}>/favicon.ico" rel="shortcut icon">
    <link rel="stylesheet" type="text/css" href="<{xoImgUrl}>css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<{xoImgUrl}>css/xoops.css">
    <link rel="stylesheet" type="text/css" href="<{xoImgUrl}>css/reset.css">
    <link rel="stylesheet" type="text/css" media="all" href="<{$xoops_themecss}>">
    <link rel="stylesheet" type="text/css" media="screen" href="<{xoImgUrl}>css/wgtheme.css"/>
    <link rel="stylesheet" type="text/css" media="screen" href="<{xoImgUrl}>css/headhesive.css"/>
    <!-- Multi-level Menu -->
    <link rel="stylesheet" type="text/css" href="<{xoImgUrl}>css/multilevelmenu.css">

    <{if $xoops_dirname=='newbb'}>
        <link rel="stylesheet" type="text/css" media="screen" href="<{xoImgUrl}>css/forums.css"/>
    <{/if}>

    <script src="<{$xoops_url}>/browse.php?Frameworks/jquery/jquery.js"></script>

    <script src="<{xoImgUrl}>js/bootstrap.min.js"></script>
    <script src="<{xoImgUrl}>js/masonry.pkgd.min.js"></script>

    <script src="<{xoImgUrl}>js/headhesive.min.js"></script>
    <script src="<{xoImgUrl}>js/jquery.scrollUp.min.js"></script>
    <script src="<{xoImgUrl}>js/imagesloaded.pkgd.min.js"></script>
    <script src="<{xoImgUrl}>js/wgcustom.js"></script>

<!--[if lt IE 9]>
    <script src="http://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="http://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <script src="<{xoImgUrl}>js/selectivizr-min.js"></script>
<![endif]-->
    <script src="<{xoImgUrl}>js/js.js"></script>
    <link rel="alternate" type="application/rss+xml" title="" href="<{xoAppUrl backend.php}>">

    <title><{if $xoops_dirname == "system"}><{$xoops_sitename}><{if $xoops_pagetitle !=''}> - <{$xoops_pagetitle}><{/if}><{else}><{if $xoops_pagetitle !=''}><{$xoops_pagetitle}> - <{$xoops_sitename}><{/if}><{/if}></title>

    <{$xoops_module_header}>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-149177931-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());

      gtag('config', 'UA-149177931-1');
    </script>


</head>

<body id="<{$xoops_dirname}>">

<{if $xoops_page == "index"}>
    <{includeq file="$theme_name/tpl/header-home.tpl"}>
<{else}>
    <{includeq file="$theme_name/tpl/header-misc.tpl"}>
<{/if}>
    
<div class="container-fluid maincontainer">
    <!-- Welcome -->
    <i id="welcome" class="welcome"></i>
    

    <!-- left blocks -->
    <{includeq file="$theme_name/tpl/leftBlock.tpl"}>

    <!-- page top blocks -->
    <{includeq file="$theme_name/tpl/centerLeft.tpl"}>
    <{includeq file="$theme_name/tpl/centerBlock.tpl"}>
    <{includeq file="$theme_name/tpl/centerRight.tpl"}>

    <!-- content -->
    <{if $xoops_contents}>
        <section id="xoops_contents" class="wgcontainer">
            <div class="row">
                <{$xoops_contents}>
            </div>
            <div class="clear"></div>
            <div class="block-divider"></div>
        </section>
    <{/if}>

    <!-- page bottom blocks -->
    <{includeq file="$theme_name/tpl/leftBottom.tpl"}>
    <{includeq file="$theme_name/tpl/centerBottom.tpl"}>
    <{includeq file="$theme_name/tpl/rightBottom.tpl"}>

    <!-- right blocks -->
    <{includeq file="$theme_name/tpl/rightBlock.tpl"}>

</div><!-- .maincontainer -->

<{if $xoBlocks.footer_center || $xoBlocks.footer_right || $xoBlocks.footer_left}>
    <section class="footer-blocks">
        <div class="container">
            <div class="row">
                <{includeq file="$theme_name/tpl/leftFooter.tpl"}>
                <{includeq file="$theme_name/tpl/centerFooter.tpl"}>
                <{includeq file="$theme_name/tpl/rightFooter.tpl"}>
            </div>
        </div>
    </section><!-- .footer-blocks -->
<{/if}>
<!-- end of new footer blocks  -->


<footer class="footer">
    <h3>
        <{$xoops_footer}>
        <{$cookiesregsmarty_04497f1c9f492ccf146a4a9fc5659a08}>
    </h3>
</footer>
</body>
</html>
