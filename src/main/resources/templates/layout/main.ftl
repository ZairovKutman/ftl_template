<#import "/spring.ftl" as spring/>

<#macro head title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>
    Customs State Service
    <#list title as k,v>
        | <@spring.message v/>
    </#list>
</title>

</#macro>

<#macro userbar>
<div class="navbar navbar-inverse">
    <div class="navbar-header">
    <#--<a class="navbar-brand" href="/"><img src="/assets/images/logo_light.png" alt=""></a>-->

        <ul class="nav navbar-nav pull-right visible-xs-block">
            <li><a data-toggle="collapse" data-target="#navbar-mobile"><i class="icon-tree5"></i></a></li>
        </ul>
    </div>

    <div class="navbar-collapse collapse" id="navbar-mobile">
        <#--<p class="navbar-text"><span class="label bg-success-400">Online</span></p>-->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown language-switch" style="display:none;">
                <a class="dropdown-toggle" data-toggle="dropdown">
                    <img src="/assets/images/flags/${.lang}.png" class="position-left" alt="">
                    <#if .lang=="kg">
                    Кыргызча
                    <#elseif .lang=="ru">
                    Русский
                    <#else>
                    Не указано
                    </#if>
                    <span class="caret"></span>
                </a>

                <ul class="dropdown-menu">
                    <li><a href="?lang=kg" class="deutsch"><img src="/assets/images/flags/kg.png" alt=""> Кыргызча</a>
                    </li>
                    <li><a href="?lang=ru" class="russian"><img src="/assets/images/flags/ru.png" alt=""> Русский</a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</div>
</#macro>

<#macro navbar>
<div class="navbar navbar-default" id="navbar-second">
    <ul class="nav navbar-nav no-border visible-xs-block">
        <li>
            <a class="text-center collapsed" data-toggle="collapse" data-target="#navbar-second-toggle">
                <i class="icon-menu7"></i>
            </a>
        </li>
    </ul>

    <div class="navbar-collapse collapse" id="navbar-second-toggle">
        <ul class="nav navbar-nav">
            <li>
                <a href="/">
                    <i class="icon-display4 position-left"></i>
                    <@spring.message 'patent.mainpage'/>
                </a>
            </li>

        </ul>
    </div>

</div>
</#macro>

<#macro pageHeader arr>
<div class="page-header">
    <div class="page-header-content">
        <div class="page-title">
            <div id="custom-breadcrumbs">
            <ul>
                <#list arr as k,v>
                    <li>
                        <a href="${k}">
                            <@spring.message v/>
                        </a>
                    </li>
                </#list>
            </ul>
            </div>
        </div>
    </div>
</#macro>

<#macro content>
    <div class="page-container">
        <div class="page-content">
            <div class="content-wrapper">
                <#nested />
            </div>
        </div>
    </div>
</#macro>

<#macro footer>
    <footer class="section footer-classic context-dark bg-image" style="background: #636f74;">

    </footer>
</#macro>

<#macro render breadcrumb={} title={}>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <@head title/>
    </head>

    <body>
        <@userbar/>
        <@navbar/>
        <@pageHeader breadcrumb/>
        <@content>
            <#nested/>
        </@content>
        <@footer/>
    </body>
    </html>
</#macro>