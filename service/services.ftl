<h3 style="margin:0;margin-bottom:25px;color:#333;font-weight:700;">${themeDisplay.getLayout().getName()}</h3>
<style>
.agency-container{font-family:'Trebuchet MS',Arial,Helvetica,sans-serif;margin-bottom:30px}.agency-container .services-card{background:#fff;height:auto;box-shadow:2px 3px 6px 0 rgba(0,0,0,.16);padding:30px}.agency-container .services-card .wc-services{display:block;text-decoration:none}.agency-container .services-card .wc-services .services-icon{width:30px;height:30px;margin-right:20px}.agency-container .services-card .wc-services p.services-title{font-size:16px;font-weight:700;line-height:1.5;color:#004d99;margin:0;padding:0}.agency-container .services-card .wc-services .services-description{line-height:1.71;color:#505050;height:auto;padding-top:10px;margin-left:55px;margin-right:55px}
</style>
<#if entries?has_content>
        <#list entries as entry>
          <div class="agency-container">
            <#assign assetRenderer = entry.getAssetRenderer() />
            <#assign title=entry.getTitle(locale)/>
            <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
            <#assign classname=assetRenderer.getClassName()/>
            <#if classname=="com.liferay.journal.model.JournalArticle">
                <#assign
                    journalArticle=assetRenderer.getArticle()
                    docXml=saxReaderUtil.read(journalArticle.content)
                    description=docXml.valueOf("//dynamic-element[@name='DescriptionOfService']/dynamic-content/text()")
                    icon=docXml.valueOf("//dynamic-element[@name='Icon']/dynamic-content/text()")>
                    <div class="services-card">
                    <a class="wc-services" href="${viewURL}">
          
                        <p class="services-title">
                        <#if icon!="">
                            <img class="services-icon" src="${icon}" alt="${title}">
                        </#if>${title}
                        </p>
                        <#if description!="">
                        <div class="services-description">
                            <#if description?length gt 160>
                                ${description[0..160]}...
                            <#else>
                                ${description}
                            </#if>
                        </div>
                 
                        </#if>
                    </a>
                    </div>
                   
                
            </#if>
                </div>
        </#list>
</#if>