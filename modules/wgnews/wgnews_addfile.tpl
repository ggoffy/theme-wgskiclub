<{include file="db:wgnews_header.tpl" item=$item}>

<div class="wgnews_infotitle"><{$langIntroTitle}></div>
<div class="wgnews_infotext"><{$langIntroText}></div>
<br><{$form.javascript}>
<form name="<{$form.name}>" action="<{$form.action}>" method="<{$form.method}>" <{$form.extra}>>
    <table class="outer" cellspacing="1">
        <tr>
            <th colspan="2"><{$form.title}></th>
        </tr>
        <!-- start of form elements loop -->
        <{foreach item=element from=$form.elements}>
            <{if $element.hidden != true}>
                <tr>
                    <td class="head"><{$element.caption}> <{if $element.required}> *<{/if}>
                        <{if $element.description}>
                            <div style="font-weight: normal;"><{$element.description}></div>
                        <{/if}>
                    </td>
                    <td class="<{cycle values=" even,odd"}>"><{$element.body}></td>
                </tr>
            <{else}>
                <{$element.body}>
            <{/if}>
        <{/foreach}><!-- end of form elements loop -->
    </table>
</form>

<{if $isAdmin == 1}>
    <div class="wgnews_adminlinks"><{$wgnews_adminpage}></div>
<{/if}>
