<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<h3 style="margin:0;margin-bottom:25px;color:#333;font-weight:700">Policies</h3>
<p style="margin:0;;color:#333;font-size:20px;line-height:24px;font-weight:700">${.vars['reserved-article-title'].data}</p>
<#assign counter = 0 >
                    <#assign _counter = 0 >
                    <#list "${LinkOfFile.getData()}"?split("/") as x>
                    <#if counter == 4>
                    <#assign ext = x >
                        <#list ext?split(".") as e>
                            <#if _counter==1>
                                <#assign ftype=e>
                            </#if>
                            <#assign _counter = _counter+1 >
                        </#list>
                    </#if>
                    <#assign counter = counter+1 >
                    </#list>
<#if ftype=="docx" || ftype=="doc">
    <#assign _c="far fa-file-word">
    <#assign color="#6b9ae5">
<#elseif ftype=="pdf">
    <#assign _c="far fa-file-pdf">
    <#assign color="#9e0000">
<#elseif ftype=="xls" || ftype=="xlsx">
    <#assign _c="far fa-file-excel">
    <#assign color="#29bc55">
<#elseif ftype=="csv">
    <#assign _c="far fa-file-csv">
    <#assign color="#e2833b">
<#elseif ftype=="pptx" || ftype=="ppt">
    <#assign _c="far fa-file-powerpoint">
    <#assign color="#e23a3a">
<#else>
     <#assign _c="far fa-file">
</#if>
<#assign MaterialType=ftype?upper_case>
<a style="font-family: 'Trebuchet MS';font-size: 16px;color: #004d99};" href="${LinkOfFile.getData()}" download>Download
<i class='${_c}' style='font-size:14px;color:${color}'> <sup style="font-style:"Trebuchet MS";padding-top:5px;">${ftype}</sup></i>
</a>
<p style="font-size: 16px; line-height: 22.5px">${PolicyBody.getData()}</p>