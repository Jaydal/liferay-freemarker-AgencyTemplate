
<h3 style="margin:0;margin-bottom:25px;color:#333;font-weight:700">${themeDisplay.getLayout().getName()}</h3>
<#if entries?has_content>
<style>
.agency-about{font-family:'Trebuchet MS',Arial,Helvetica,sans-serif}.agency-about .title{font-size:20px;font-weight:700;line-height:1.1;color:#505050}.agency-about .card{box-shadow:0 3px 6px 0 rgba(0,0,0,.16);padding:20px 0 20px 10px}.agency-about .card .title{font-size:16px;line-height:1.5;color:#004d99}.agency-about .card .details{padding:16px}
</style>

<#list entries as entry>
<div class="agency-about">
    <#assign assetRenderer = entry.getAssetRenderer() />
    <#assign title=entry.getTitle(locale)/>
    <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
    <#assign classname=assetRenderer.getClassName()/>
        <#if classname=="com.liferay.journal.model.JournalArticle">
            <#assign
                journalArticle=assetRenderer.getArticle()
                docXml=saxReaderUtil.read(journalArticle.content)
                content=docXml.valueOf("//dynamic-element[@name='RelevantContentsAboutTheAgency']/dynamic-content/text()")>
        </#if>

<div class="services-content">
            <div class="card">
                <div class="details">
                        <a class="title" href="${viewURL}">${title}</a>
                </div> 
            </div>
        </div>
</#list>
</#if>