<#import "/spring.ftl" as spring />

<#macro selectOptions path options key value>
    <@spring.bind path/>
    <label for="${spring.status.expression}"></label>
    <select id="${spring.status.expression}" name="${spring.status.expression}">
        <#list options as option>
            <option value="${option[key]?html}"<@spring.checkSelected option[key]/>>${option[value]?html}</option>
        </#list>
    </select>
</#macro>