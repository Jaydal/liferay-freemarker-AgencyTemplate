
<h3 style="margin:0;margin-bottom:25px;color:#333;font-weight:700">${themeDisplay.getLayout().getName()}</h3>
<#if entries?has_content>
<style>
.agency-procurement{font-family:'Trebuchet MS',Arial,Helvetica,sans-serif}.agency-procurement a{font-size:16px;height:23px;display:block}.agency-procurement .archive{position:absolute;top:5px;right:16px;font-size:14px;color:grey}.agency-procurement .archive a{line-height:1.14;display:block}
</style>

<div class="agency-procurement">
<#list entries as entry>
    <#assign assetRenderer = entry.getAssetRenderer() />
    <#assign title=entry.getTitle(locale)/>
    <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
    <#assign classname=assetRenderer.getClassName()/>
        
        <#if classname=="com.liferay.journal.model.JournalArticle">
            <#assign
                journalArticle=assetRenderer.getArticle()
                docXml=saxReaderUtil.read(journalArticle.content)
                pdfLink=docXml.valueOf("//dynamic-element[@name='PDFLinkOfProcurement']/dynamic-content/text()")>
        </#if>
    <a class="title" href="${pdfLink}">${title}</a>
    <br>
</#list>
</div>
</#if>