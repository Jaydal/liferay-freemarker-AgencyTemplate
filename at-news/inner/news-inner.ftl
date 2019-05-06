<style>
    .wc-container{background-color:#fff;font-family:"Trebuchet MS",Helvetica,sans-serif;text-align:left}.wc-container .wc-text{font-size:14px;line-height:1.14;color:grey}.wc-container img{display:block;margin-left:auto;margin-right:auto;height:100%;object-fit:contain;padding-bottom:12px}.wc-container .wc-body p{font-size:16px;line-height:1.5;color:#505050}
    </style>
    <div class="wc-container">
   <#if NameOfAuthor.getData()!="">
                <p class="wc-text">by ${NameOfAuthor.getData()}</p>
    </#if>
    <#assign DatePosted_Data = getterUtil.getString(DatePosted.getData())>

<#if validator.isNotNull(DatePosted_Data)>
	<#assign DatePosted_DateObj = dateUtil.parseDate("yyyy-MM-dd", DatePosted_Data, locale)>

	<p class="wc-text">Posted on ${dateUtil.getDate(DatePosted_DateObj, "MMMM dd, yyyy", locale)}</p>
</#if>
        <#if Image.getData()?? && Image.getData() != "">
	<img class="wc-image" alt="${Image.getAttribute("alt")}" src="${Image.getData()}" />
</#if>
            <div class="wc-body">
                ${BodyOfNews.getData()}
            </div>
    </div>