<style>
.faqs-container{background:#fff;font-family:'Trebuchet MS',Arial,Helvetica,sans-serif;font-stretch:normal}.faqs-container .wc-faqs{height:auto;box-shadow:0 3px 6px 0 rgba(0,0,0,.16);background-color:#fff;padding:30px}.faqs-container .wc-faqs .faq-item{font-weight:700;font-size:16px;color:#505050}</style>
<#if entries?has_content>
<#assign count=0>
<#assign id=0>
<#assign temp_cat="wala">
   <div class="faqs-container">
        <ul class="nav nav-pills nav-justified">
            <li class="active"><a data-toggle="pill" href="#menu1">Service</a></li>
            <li><a data-toggle="pill" href="#menu2">Program</a></li>
            <li><a data-toggle="pill" href="#menu3">Gov.ph</a></li>
        </ul>
        <div class="tab-content wc-faqs">
        <#list entries as entry>
            <#assign assetRenderer = entry.getAssetRenderer() />
                <#assign question=entry.getTitle(locale)/>
                <#assign classname=assetRenderer.getClassName()/>
                <#if classname=="com.liferay.journal.model.JournalArticle">
                <#assign
                    journalArticle=assetRenderer.getArticle()
                    docXml=saxReaderUtil.read(journalArticle.content)
                    category=docXml.valueOf("//dynamic-element[@name='Category']/dynamic-content/text()")
                    answer=docXml.valueOf("//dynamic-element[@name='Answer']/dynamic-content/text()")>
                </#if>
                <#if (count>0)>
                    <#assign faqs_list=[{"category":category,"question":question,"answer":answer}]+faqs_list>
                <#else>
                    <#assign faqs_list=[{"category":category,"question":question,"answer":answer}]>
                    <#assign count++>
                </#if>
        </#list>
        <#assign count=0>
        <#list (faqs_list?sort_by('category','question'))?reverse as faqs>
            <#--  ${faqs.category}  --> .
            <#if temp_cat!=faqs.category>
                <#assign count++>
                <#if (id>0) >
                    </div>
                    </div>
                    <#assign id=0>
                </#if>
            </#if>

            <#if count==1 && id==0 >
                <#assign temp_cat=faqs.category>
                <div id="menu${count}" class="tab-pane fade in active">
                <h3>${faqs.category} FAQs</h3>
                <div class="panel-group" id="accordion">
            <#elseif (count==2 || count==3 && id==0) >
                <div id="menu${count}" class="tab-pane fade in">
                <h3>${faqs.category} FAQs</h3>
                <div class="panel-group" id="accordion">
            </#if>
            <#--  <#assign count=0>  -->
            <#assign id++>
                
                <div class="panel">
                    <diA v class="panel-heading">
                       A  <h4 class="panel-title">
                       A      <a class="faq-item" data-toggle="collapse" data-parent="#accordion" href="#${count+""+id}">${faqs.question}</a>
                        </h4>
                    </div>
                    <div id="${count+""+id}" class="panel-collapse collapse">
                            <div class="panel-body">${faqs.answer}</div>
                    </div>
                </div>
                <#assign temp_cat=faqs.category> 

            
        </#list>
        </div>
    </div>
</#if>