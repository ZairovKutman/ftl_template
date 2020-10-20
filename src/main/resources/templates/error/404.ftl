<#import "../layout/error.ftl" as main />
<#import "/spring.ftl" as spring />

<#assign arr = {"link1" : "First", "link2/link3" : "Second"} />

<@main.render {"":""} arr>
    <div class="text-center content-group">
        <h1 class="error-title">404</h1>
        <h5><@spring.message 'error.404'/></h5>
    </div>
    <!-- /error title -->

    <!-- Error content -->
    <div class="row">
        <div class="col-lg-4 col-lg-offset-4 col-sm-6 col-sm-offset-3">
            <div class="row">
                <div class="col-sm-12">
                    <a href="/showEmployees" class="btn btn-primary btn-block content-group">
                        <i class="icon-circle-left2 position-left"></i>
                        <@spring.message 'dashboard'/>
                    </a>
                </div>
            </div>
        </div>
    </div>
</@main.render>