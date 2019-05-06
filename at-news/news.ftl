    <#if entries?has_content>
    <style>
   .wc-news{background:#fff;font-family:"Trebuchet MS",Helvetica,sans-serif;text-align:left;margin-bottom:30px}.wc-news h2{font-size:22px;font-weight:700;color:#505050;padding-bottom:26px}.wc-news .card-news{box-shadow:0 3px 6px 0 rgba(0,0,0,.16);background-color:var(--white)}.wc-news .card-news .news-content{padding-right:30px;padding-top:10px}@media (max-width:960px){.wc-news .card-news .news-content{padding-left:20px}}.wc-news .card-news .news-content a.read-more{font-size:16px;line-height:1;color:#004d99;padding-bottom:15px}.wc-news .card-news .news-content .news-content-inner{padding-right:63px;padding-top:15px;padding-bottom:30px}.wc-news .card-news .news-content .news-content-inner a.card-title{font-size:16px;font-weight:700;line-height:1;text-align:left;color:#505050}.wc-news .card-news .news-content .news-content-inner p.date-posted{font-family:Arial;font-size:12px;color:#545454}.wc-news .card-news .news-content .news-content-inner p.news-body{font-size:16px;line-height:1.5;text-align:left;color:#505050}.wc-news .card-news img{height:200px;width:auto;min-width:115px}@media (max-width:960px){.wc-news .card-news img{width:100%;height:auto;display:block;margin-left:auto;margin-right:auto}}
   </style>  
   <#--  <h2>${themeDisplay.getLayout().getName()}</h2>    -->
            <#list entries as entry>
        <div class="wc-news">
            <#assign assetRenderer = entry.getAssetRenderer() />
                    <#assign title=entry.getTitle(locale)/>
                    <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
                    <#assign classname=assetRenderer.getClassName()/>
                    <#if classname=="com.liferay.journal.model.JournalArticle">
                        <#assign
                            journalArticle=assetRenderer.getArticle()
                            docXml=saxReaderUtil.read(journalArticle.content)
                            datePosted=docXml.valueOf("//dynamic-element[@name='DatePosted']/dynamic-content/text()")
                            newsImage=docXml.valueOf("//dynamic-element[@name='Image']/dynamic-content/text()")
                            newsBody=docXml.valueOf("//dynamic-element[@name='BodyOfNews']/dynamic-content/text()")>
                    </#if>
                    <#assign datePosted=datePosted?date("yyyy-MM-dd")?string("MMMM dd, yyyy")>
                <div class="card-news">
                    <div class="row">
                    <#if newsImage!="">
                        <div class="col-md-4">
                            <a href="${viewURL}"><img src="${newsImage}"/></a>
                        </div>
                        <#assign _c="col-md-8">
                    <#else>
                        <#assign _c="col-md-12">
                    </#if>
                        <div class="${_c}">
                            <div class="news-content" style="<#if newsImage==''>padding-left:20px;</#if>">
                                <div class="news-content-inner">
                                    <a class="card-title" style="<#if newsImage==''>color:#004d99;</#if>" href="${viewURL}">${title}</a>
                                    <p class="date-posted">Date posted: ${datePosted}</p>
                                    <p class="news-body">${newsBody[0..150]}...</p>
                                </div>
                                
                                <a class="read-more pull-right" href="${viewURL}">Read More</a>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                </div>
            </#list>
            
        </#if>