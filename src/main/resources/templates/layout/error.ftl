<#macro head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        Customs State Service
    </title>


</#macro>

<#macro userbar>
    <div class="navbar navbar-inverse">
        <div class="navbar-collapse collapse" id="navbar-mobile">
            <p class="navbar-text"><span class="label bg-success-400">Online</span></p>
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
    <div class="footer text-muted">

    </div>
</#macro>

<#macro render arr={} title={}>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <@head/>
    </head>

    <body class="login-container">
    <@userbar/>
    <@content>
        <#nested/>
    </@content>
    <@footer/>
    </body>
    </html>
</#macro>