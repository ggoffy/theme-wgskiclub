<{if $collapsable_heading == 1}>
    <script type="text/javascript"><!--
        function goto_URL(object) {
            window.location.href = object.options[object.selectedIndex].value;
        }

        function toggle(id) {
            if (document.getElementById) {
                obj = document.getElementById(id);
            }
            if (document.all) {
                obj = document.all[id];
            }
            if (document.layers) {
                obj = document.layers[id];
            }
            if (obj) {
                if (obj.style.display == "none") {
                    obj.style.display = "";
                } else {
                    obj.style.display = "none";
                }
            }
            return false;
        }

        var iconClose = new Image();
        iconClose.src = 'assets/images/links/close12.gif';
        var iconOpen = new Image();
        iconOpen.src = 'assets/images/links/open12.gif';

        function toggleIcon(iconName) {
            if (document.images[iconName].src == window.iconOpen.src) {
                document.images[iconName].src = window.iconClose.src;
            } else if (document.images[iconName].src == window.iconClose.src) {
                document.images[iconName].src = window.iconOpen.src;
            }
        }

        //-->
    </script>
<{/if}>

<{if $wginfos_display_breadcrumb}>

    <div class="wginfos_headertable">
        <{if $module_home}>
            <span class="wginfos_modulename"><{$module_home}></span>
            <{if $title_and_welcome}>
                <span><{$lang_mainintro}></span>
            <{/if}>
        <{/if}>
        <{if $categoryPath}>
            <span class="wginfos_breadcrumb">
                <{if $module_home}>
                    >
                <{/if}>
                <{$categoryPath}>
            </span>
        <{/if}>
    </div>
<{/if}>
