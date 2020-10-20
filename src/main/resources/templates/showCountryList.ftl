<!DOCTYPE>
<html>
<head>
    <title>Country List</title>
</head>

<body>
<h2>Country List</h2>
<label>
    <select name="country">
        <option value="">-- Выберите регион --</option>
        <#if countryList??>
            <#list countryList as country>
            <option value="${country.getId()}">${country.getName()}</option>
            </#list>
        </#if>
    </select>
</label>

</body>
</html>
