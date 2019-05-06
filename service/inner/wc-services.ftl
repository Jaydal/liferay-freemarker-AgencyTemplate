<style>
.services-content{font-family:'Trebuchet MS',Arial,Helvetica,sans-serif}.services-content .icon{width:30px;height:30px;margin-right:10px}.services-content .title{font-size:20px;font-weight:700;line-height:1.1;color:#505050}.services-content .card{box-shadow:0 3px 6px 0 rgba(0,0,0,.16);padding:20px 0 20px 10px}.services-content .card a{font-size:16px;line-height:1.5;color:#505050}.services-content .card .details{padding:10px}
</style>
<h3 style="margin:0;margin-bottom:25px;color:#333;font-weight:700">${themeDisplay.getLayout().getName()}</h3>
<div class="services-content">
            <p class="title"><#if Icon.getData()?? && Icon.getData() != "">
	<img class="icon" data-fileentryid="${Icon.getAttribute("fileEntryId")}" src="${Icon.getData()}" />
</#if>
${.vars['reserved-article-title'].data}</p>
            <div class="card">
            <div class="details">${DescriptionOfService.getData()}
            <#if LinkOfOnlineService.getData()!="">
                    <a href="${LinkOfOnlineService.getData()}">For more information about this, pleas click this link.</a>
            </#if>
            </div> 
            </div>
        </div>