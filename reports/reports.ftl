<h3 style="margin:0;margin-bottom:25px;color:#333;font-weight:700">${themeDisplay.getLayout().getName()}</h3>
<#if entries?has_content>
<style>
.agency-reports{color:#505050;font-family:"Trebuchet MS",Helvetica,sans-serif}
.agency-reports p{font-size:16px;line-height:22.5px}
.agency-reports .card{background:#fff;border:0;box-shadow:0 3px 6px 0 rgba(0,0,0,.16);margin-bottom:16px;border-radius:0;font-size:14px;line-height:14px}
.agency-reports .card a{color:#004d99}
.agency-reports .card .card-details{padding:16px;padding-top:23px;position:relative}
.agency-reports .card .card-details .title{font-size:16px;font-weight:700;line-height:16px;margin-bottom:10px}
.agency-reports .card .card-details .description{font-size:14px;line-height:1.71;color:#505050;overflow-y:hidden;margin:20px 0}
.agency-reports .card .card-details .date-posted{font-size:12px;color:grey}
.agency-reports .card .card-details .tags{position:absolute;bottom:5px;right:16px;font-size:16px;color:grey}
.agency-reports .card .card-details .tags a{line-height:1.14}
.agency-reports .card .card-details .read-more{font-size:16px;color:#004d99;position:absolute;bottom:22px;right:16px;padding-bottom:8px}
.agency-reports .card .card-details *{margin:0}
</style>
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<#list entries as entry>
<div class="agency-reports">
    <#assign assetRenderer = entry.getAssetRenderer() />
    <#assign title=entry.getTitle(locale)/>
    <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
    <#assign classname=assetRenderer.getClassName()/>
        <#if classname=="com.liferay.journal.model.JournalArticle">
            <#assign
                journalArticle=assetRenderer.getArticle()
                docXml=saxReaderUtil.read(journalArticle.content)
                reportDoc=docXml.valueOf("//dynamic-element[@name='ReportDocument']/dynamic-content/text()")   
                bodyOfReport=docXml.valueOf("//dynamic-element[@name='BodyOfReport']/dynamic-content/text()")>
        </#if>
        <#assign datePosted=entry.getPublishDate()?date?string.long>
       
        <div class="card">
        <#if bodyOfReport!=""><#assign _c="card-details"><#else><#assign _c="card-details no-desc"></#if>
             <div class="${_c}">
                    <a href="<#if bodyOfReport!="">${viewURL}<#else>${reportDoc}</#if>" class="title">${title}</a>
                    <p class="date-posted">Posted on ${datePosted}</p>
                    <#if bodyOfReport!=""><div class="description">${bodyOfReport[0..250]}...</div>
                    <a class="pull-right read-more" href="${viewURL}">Read more</a>
                    <#else><br>
                    <a href="${reportDoc}" target="_blank"><i class='far fa-file-pdf' style='font-size:14px;color:#9e0000'> <sup style="font-style:"Trebuchet MS";padding-top:5px;">pdf</sup></i></a>
                    </#if>
                    
                     <p class="tags"> 
                                                <#assign tags = entry.getTags() >
                                                <#assign c=0>
                                                <#list tags as tag>
                                                <#if c==0>Tags:</#if>
                                                    <#assign c++>   
                                                    <a href="#">${tag.name?capitalize}</a>
                                                    <#if (c<tags?size) >,</#if>
                                                </#list>
                                                </p>
            </div>
        </div>
</#list>
</div>
</#if>