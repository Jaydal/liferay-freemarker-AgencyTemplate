<h3  style="margin:0;margin-bottom:25px;color:#333;font-weight:700">${themeDisplay.getLayout().getName()}</h3>
<#if entries?has_content>
    <style>
    .agency-downloads{color:#505050;font-family:"Trebuchet MS",Helvetica,sans-serif}.agency-downloads p{font-size:16px;line-height:22.5px}.agency-downloads .archive{position:absolute;top:5px;right:16px;font-size:14px;color:grey}.agency-downloads .archive a{line-height:1.14}.agency-downloads .card{background:#fff;border:0;box-shadow:0 3px 6px 0 rgba(0,0,0,.16);margin-bottom:16px;border-radius:0;font-size:14px;line-height:14px}.agency-downloads .card a{color:#004d99}.agency-downloads .card .card-img{position:absolute;top:0;bottom:0;margin:auto;width:200px}.agency-downloads .card .card-mat{background-color:#7fc4fd;height:200px;width:200px}.agency-downloads .card .card-details{padding:16px;min-height:223px;padding-left:0;position:relative}.agency-downloads .card .card-details .title{font-weight:600;font-size:16px;line-height:16px;margin-bottom:4px}.agency-downloads .card .card-details .description{line-height:20px;overflow-y:hidden;margin:10px 0}.agency-downloads .card .card-details .date-posted{color:grey;position:absolute;bottom:22px;right:16px}.agency-downloads .card .card-details .source{font-size:16px}.agency-downloads .card .card-details .tags{position:absolute;bottom:5px;right:16px;font-size:16px;color:grey}.agency-downloads .card .card-details .tags a{line-height:1.14}.agency-downloads .card .card-details *{margin:0}.agency-downloads .card .card-details.no-image{padding-left:16px}@media (max-width:991px){.agency-downloads .card .card-img{width:100%;height:auto;display:block;margin-left:auto;margin-right:auto;object-fit:cover;position:relative}.agency-downloads .card .card-mat{width:100%;height:auto;display:block;margin-left:auto;margin-right:auto;object-fit:cover}.agency-downloads .card .card-details{padding-left:16px}}@media (max-width:767px){.agency-downloads .card .card-details .description{line-height:20px}.agency-downloads .card .card-details .tags{bottom:0;left:15px}.agency-downloads .card .card-details .date-posted{position:relative;bottom:0;left:0}}
    </style>
<div class="agency-downloads">
    <#--  <p class="archive">Archives <a href="#">2018</a>-<a href="#">2017</a>-<a href="#">2016</a></p>  -->
<#list entries as entry>
                <#assign assetRenderer = entry.getAssetRenderer() />
                        <#assign title=entry.getTitle(locale)/>
                        <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
                        <#assign classname=assetRenderer.getClassName()/>
                        <#if classname=="com.liferay.journal.model.JournalArticle">
                            <#assign
                                journalArticle=assetRenderer.getArticle()
                                docXml=saxReaderUtil.read(journalArticle.content)
                                Description=docXml.valueOf("//dynamic-element[@name='DescriptionOfDownloadableMaterial']/dynamic-content/text()")   
                                DownloadLink=docXml.valueOf("//dynamic-element[@name='Material']/dynamic-content/text()")>
                        </#if>
                    <#assign urlPortal = themeDisplay.getURLPortal() >
                    <#assign siteName = themeDisplay.getScopeGroup().getFriendlyURL()>
                    <#--  <#assign home_url = urlPortal + "/web" + siteName +"/home">  -->
                    <#assign datePosted=entry.getPublishDate()?string("MM/dd/yyyy")>
                
                    <#assign counter = 0 >
                    <#assign _counter = 0 >
                    <#list "${DownloadLink}"?split("/") as x>
                    <#--  <#if counter == 2>
                    <#assign groupId = x?number >
                    </#if>  -->
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
                <#assign MaterialType=ftype?upper_case>
    <div class="card">
        <div class="row">
            <#if MaterialType=="MP4" || MaterialType=="JPG" || MaterialType=="JPEG" || MaterialType=="PNG" || MaterialType=="BMP">
            <div class="col-md-4">
                <div class="card-mat">
                    <#if MaterialType=="MP4">
                        <video class="card-img" controls>
                                <source src="${DownloadLink}" type="video/mp4">
                                Your browser does not support HTML5 video.
                        </video>
                    <#else>
                        <img class="card-img" src="${DownloadLink}" />
                    </#if>
                </div>
            </div>
                <#assign _c="col-md-8">
                <#assign noImage="">
            <#else>
                <#assign _c="col-md-12">
                <#assign noImage=" no-image">
            </#if>
            <div class="${_c}">
                <div class="card-details${noImage}">
                                    <a class="title" href="${DownloadLink}" target="_blank" download>${title}</a>
                                    <p style="font-size: 14px;line-height: 1.14;color: #808080;padding-top: 5px;">${MaterialType} <a href="${DownloadLink}" download><svg xmlns="http://www.w3.org/2000/svg" width="9.928" height="12.37" viewBox="0 0 9.928 12.37">
            <defs>
                <style>
                    .cls-1{fill:#004d99}
                </style>
            </defs>
            <g id="Icon_-_Download" data-name="Icon - Download" transform="translate(-1369.644 -712.784)">
                <path id="Rectangle_1810" d="M0 0h1.754v7.015H0z" class="cls-1" data-name="Rectangle 1810" transform="rotate(-45 1551.98 -1294.118)"/>
                <path id="Rectangle_1811" d="M0 0h1.754v9.207H0z" class="cls-1" data-name="Rectangle 1811" transform="translate(1373.721 712.784)"/>
                <path id="Rectangle_1809" d="M0 0h1.754v7.015H0z" class="cls-1" data-name="Rectangle 1809" transform="rotate(45 -176.497 2022.362)"/>
                <path id="Rectangle_1839" d="M0 0h.877v9.646H0z" class="cls-1" data-name="Rectangle 1839" transform="rotate(90 327.584 1051.862)"/>
            </g>
        </svg></a></p>
                                    <p class="description"><#if Description?length gt 250>${Description[0..250]}<#else>${Description}</#if></p>
                                    <a class="source" href="home">${siteName?replace("-"," ")?replace("/","")?capitalize}</a>
                                                <p class="date-posted">Date Published: ${datePosted}</p>
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
                                
        </div>  
    </div>
</#list>
</div>
</#if>