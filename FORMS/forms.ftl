  <h3 style="margin:0;margin-bottom:25px;color:#333;font-weight:700">${themeDisplay.getLayout().getName()}</h3>
   <#if entries?has_content>
    <style>
    .forms-container{background:#fff;font-family:"Trebuchet MS",Helvetica,sans-serif}.forms-container p{font-size:16px;line-height:22.5px}.forms-container .card-forms{box-shadow:0 3px 6px 0 rgba(0,0,0,.16);background-color:var(--white);margin-bottom:30px}.forms-container .card-forms a{display:block;padding:30px;font-size:16px;font-weight:700;line-height:1;color:#505050}.forms-container .card-content{padding:30px}.forms-container .card-content .forms-content{box-shadow:0 3px 6px 0 rgba(0,0,0,.16);background-color:var(--white);margin-bottom:20px;padding:30px;padding-top:10px}.forms-container .card-content .forms-content .forms-heading{font-size:16px;font-weight:700;color:#505050}.forms-container .card-content .forms-content .ellip{display:block;display:-webkit-box;height:69px;line-height:1.4;-webkit-line-clamp:3;-webkit-box-orient:vertical;overflow:hidden;text-overflow:ellipsis}.forms-container .card-content .forms-content .read-more{font-size:16px;font-weight:400;font-style:normal;font-stretch:normal;line-height:1;cursor:pointer;letter-spacing:normal;text-align:right;color:#004d99;padding:7px}.forms-container .card-content .forms-content .forms-footer{font-size:16px;font-weight:400;font-style:normal;font-stretch:normal;line-height:1;letter-spacing:normal;text-align:center;color:#004d99;padding:7px}
    </style>
    <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>

    <#assign _c=0>
    <#assign count=0>
    <#assign id=0>
    <#assign temp="lorem">

    <div class="forms-container" id="accordion" role="tablist" aria-multiselectable="true">
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <#list entries as entry>
    
            <#assign assetRenderer = entry.getAssetRenderer() />
                        <#assign title=entry.getTitle(locale)/>
                        <#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
                        <#assign classname=assetRenderer.getClassName()/>
                        <#if classname=="com.liferay.journal.model.JournalArticle">
                            <#assign
                                journalArticle=assetRenderer.getArticle()
                                docXml=saxReaderUtil.read(journalArticle.content)
                                category=docXml.valueOf("//dynamic-element[@name='Category']/dynamic-content/text()")
                                description=docXml.valueOf("//dynamic-element[@name='DescriptionOfForm']/dynamic-content/text()")
                                _form=docXml.valueOf("//dynamic-element[@name='Form']/dynamic-content/text()")
                                oForm=docXml.valueOf("//dynamic-element[@name='LinkOfOnlineForm']/dynamic-content/text()")>
                        </#if>
                        
                    <#if (count>0) >
                        <#assign objForms=[{"title":title,"category":category,"description":description,"_form":_form,"oForm":oForm}]+objForms>
                    <#else>
                        <#assign objForms=[{"title":title,"category":category,"description":description,"_form":_form,"oForm":oForm}]>
                        <#assign count++>
                    </#if>        
        </#list>
        <#list objForms?sort_by('category') as frms>
        <#assign id++>
                    <#if temp!=frms.category>
                    <#assign temp=frms.category>
                        <#if (_c>0) >
                            </div>
                            </div>
                            </div>
                            <#assign _c=0>
                        </#if>
                
                        <div class="card-forms">
                            <div class="panel-heading" role="tab" id="heading${id}">
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                        href="#collapse${id}" aria-expanded="false" aria-controls="collapse${id}">
                                        <i class="more-less glyphicon glyphicon-plus"></i>
                                        ${frms.category}
                                    </a>
                                </h4>
                            </div>
                        <div id="collapse${id}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading${id}">
                            <div class="card-content">             
                    </#if>  
                                <div class="forms-content">
                                    <h3 class="forms-heading">${frms.title}</h3>
                                    <#if frms.description!=""><p style="margin:0;">Overview</p><div class="forms-body ellip" id="con">${frms.description}</div>
                                    <#if frms.description?length gt 165><p class="read-more" id="showCon">Read more</p></#if></#if>
                                    <#if frms._form!=""><a class="forms-footer" target="_blank" href="${frms._form}">View Form</a></#if>
                                     <#if frms._form!=""><a class="forms-footer" target="_blank" href="${frms._form}" download>Download Form <i class='far fa-file-pdf' style='font-size:14px;color:#9e0000'> <sup style="font-style:"Trebuchet MS";padding-top:5px;">pdf</sup></i></a></#if>
                                    <#if frms.oForm!=""><a class="forms-footer" target="_blank" href="${frms.oForm}">Accomplish Online</a></#if>
                                   
                                </div>   
                        
            
                <#assign _c++>

        </#list>
                            </div>
                            </div>
                            </div>
                        
    </div>
    </div>
        <script>
            function toggleIcon(e) {
                $(e.target)
                    .prev('.panel-heading')
                    .find(".more-less")
                    .toggleClass('glyphicon-plus glyphicon-minus');
            }
            $('.panel-group').on('hidden.bs.collapse', toggleIcon);
            $('.panel-group').on('shown.bs.collapse', toggleIcon);
            $(function () {
                $(".read-more").click(function () {
                    $(this).parent().find(".forms-body").toggleClass("ellip");
                    
                    if (this.innerHTML === "Read less") {
                        this.innerHTML = "Read more"; 
                    } else {
                        this.innerHTML = "Read less"; 
                    }
                })
            });
        </script>
    </#if>