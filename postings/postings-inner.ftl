<#setting date_format = "yyyy-MM-dd">
<style>
.job-vacancies-inner{font-size:16px;margin-bottom: 36px}
.job-vacancies-inner .title{margin:0;font-weight:700;font-size:20px;margin-bottom:8px}
.job-vacancies-inner .actions a{color:#004d99}
.job-vacancies-inner .details .field{margin-top:8px;border-bottom:2px solid #c8c8c8}
.job-vacancies-inner .details .field p{margin-bottom:8px}
.job-vacancies-inner .section{margin-top:24px}
.job-vacancies-inner .section.required-documents{padding:24px;border:1px solid #c8c8c8}
.job-vacancies-inner .contact{margin-top:24px;background:#fff;box-shadow:0 3px 6px 0 rgba(0,77,153,.16)}
.job-vacancies-inner .contact .header{padding:8px 12px;color:#fff;background:#004d99}
.job-vacancies-inner .contact .details{padding:8px 12px}
.job-vacancies-inner .contact .details span{margin-right:8px;margin-top:3px}
.print-action,.taglib-social-bookmarks{display: none}
.job-vacancies-inner .tooltip-container {position:relative;display:inline-block}
.job-vacancies-inner .tooltip-container .tooltiptext {visibility:hidden;width:140px;background-color:#555;color:#fff;text-align:center;border-radius:6px;padding:5px;position:absolute;z-index:1;bottom:150%;left:50%;margin-left:-75px;opacity:0;transition:opacity 0.3s}
.job-vacancies-inner .tooltip-container .tooltiptext::after {content:"";position:absolute;top:100%;left:50%;margin-left:-5px;border-width:5px;border-style:solid;border-color:#555 transparent transparent transparent}
.job-vacancies-inner .tooltip-container:hover .tooltiptext {visibility:visible;opacity:1}
@media screen and (max-width:767px){
.job-vacancies-inner .details .field{border-bottom:0}
}
@media print{
.job-vacancies-inner .title{display:none}
.job-vacancies-inner .actions{display:none}
.job-vacancies-title{display:none}
.job-vacancies-inner .section.required-documents{padding: 0;border: 0}
@page{margin:1.6cm}
}
</style>
<h3 class="job-vacancies-title" style="margin:0;margin-bottom:25px;color:#333;font-weight:700">Job Vacancies</h3>
<div class="job-vacancies-inner">
  <div class="row">
    <div class="col-xs-9">
      <h4 class="title">${.vars['reserved-article-title'].data}</h4>
      <p class="agency"><strong>${themeDisplay.getSiteGroupName()}</strong></p>
      <p class="office"><strong>${JobVacancyLocation.OfficeAddress.getData()}</strong><span style="margin-left: 4px" class="glyphicon glyphicon-map-marker"</p>
    </div>
    <div class="col-xs-3">
      <div class="actions text-right">
        <ul class="list-unstyled list-inline">
          <li>
            <a href="javascript:_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_OixO9kaV3GOf_printPage_0();">
              <svg class="lexicon-icon lexicon-icon-print" focusable="false" role="img" title="" viewBox="0 0 512 512"><title>print</title>
            <path class="lexicon-icon-body" fill="none" d="M448,96h-63.5V33c0-18.2-14.8-33-33-33H161.4c-18.2,0-33,14.8-33,33v63H64c-35.3,0-64,27.7-64,63v193.3
              c0,35.3,28.7,64,64,64h32.6v64.3c0,18.2,14.8,33,33,33h254.9c18.2,0,32-14.8,32-33v-64.3H448c35.3,0,64-28.7,64-64V159
              C512,123.7,483.3,96,448,96z"></path>
            <path class="lexicon-icon-outline" d="M448,96h-63.5V33c0-18.2-14.8-33-33-33H161.4c-18.2,0-33,14.8-33,33v63H64c-35.3,0-64,27.7-64,63v193.3
              c0,35.3,28.7,64,64,64h32.6v64.3c0,18.2,14.8,33,33,33h254.9c18.2,0,32-14.8,32-33v-64.3H448c35.3,0,64-28.7,64-64V159
              C512,123.7,483.3,96,448,96z M192.4,64h128.1v32.4H192.4V64z M351.6,447.6h-191v-95.3h190.9L351.6,447.6z M448,352.3h-31.4v-31.1
              c0-18.2-14.8-33-33-33h-254c-18.2,0-33,14.8-33,33v31.1H64V160h384V352.3L448,352.3z"></path>
            <circle class="lexicon-icon-outline" cx="112" cy="208.3" r="16"></circle>
            <circle class="lexicon-icon-outline" cx="176.3" cy="208" r="15.7"></circle>
          </svg>
        </a>
          </li>
          <li>
            <div class="tooltip-container">
            <a style="display:block;cursor:pointer" onclick="copyToClipboard()"  onmouseout="resetClipboard()"><span class="tooltiptext" id="copyTooltip">Copy to clipboard</span><span style="color: #014d99;" class="glyphicon glyphicon-duplicate"></span></a></div>
            <#-- <div class="dropdown">
              <a data-toggle="dropdown" style="cursor: pointer;">
                <svg class="lexicon-icon lexicon-icon-share-alt" focusable="false" role="img" title="" viewBox="0 0 512 512">
                  <title>share-alt</title>
            <path class="lexicon-icon-outline" d="M397.255 402.745c-5.868-5.868-12.709-10.478-20.334-13.702-7.911-3.346-16.296-5.043-24.921-5.043s-17.010 1.697-24.921 5.043c-2.625 1.111-5.154 2.389-7.587 3.822l-104.357-104.357c1.434-2.432 2.712-4.962 3.822-7.587 3.346-7.911 5.042-16.296 5.042-24.922s-1.696-17.011-5.042-24.922c-1.111-2.625-2.388-5.155-3.822-7.587l104.357-104.357c2.432 1.433 4.961 2.712 7.587 3.822 7.911 3.346 16.296 5.043 24.921 5.043s17.010-1.697 24.921-5.043c7.625-3.225 14.466-7.835 20.334-13.703s10.478-12.709 13.702-20.334c3.346-7.911 5.043-16.296 5.043-24.922s-1.697-17.011-5.043-24.922c-3.225-7.625-7.835-14.466-13.702-20.334s-12.709-10.477-20.334-13.703c-7.911-3.346-16.296-5.043-24.921-5.043s-17.010 1.696-24.921 5.043c-7.625 3.225-14.466 7.835-20.334 13.703s-10.478 12.709-13.702 20.334c-3.346 7.911-5.043 16.296-5.043 24.922s1.697 17.011 5.043 24.922c1.111 2.625 2.389 5.155 3.822 7.587l-104.357 104.357c-2.431-1.434-4.962-2.712-7.587-3.822-7.911-3.346-16.296-5.042-24.922-5.042s-17.011 1.696-24.922 5.042c-7.625 3.225-14.466 7.835-20.334 13.702s-10.478 12.709-13.703 20.334c-3.346 7.911-5.043 16.296-5.043 24.922s1.697 17.011 5.043 24.922c3.225 7.625 7.835 14.466 13.703 20.334s12.709 10.478 20.334 13.702c7.911 3.346 16.296 5.043 24.922 5.043s17.011-1.697 24.922-5.043c2.625-1.111 5.155-2.389 7.587-3.822l104.357 104.357c-1.433 2.432-2.712 4.961-3.822 7.587-3.346 7.911-5.043 16.296-5.043 24.921s1.697 17.010 5.043 24.921c3.225 7.625 7.835 14.466 13.702 20.334s12.709 10.478 20.334 13.702c7.911 3.346 16.296 5.042 24.921 5.042s17.010-1.697 24.921-5.043c7.625-3.225 14.466-7.835 20.334-13.702s10.478-12.709 13.702-20.334c3.346-7.911 5.043-16.296 5.043-24.921s-1.697-17.010-5.043-24.921c-3.225-7.625-7.835-14.466-13.702-20.333zM352 32c17.673 0 32 14.327 32 32s-14.327 32-32 32-32-14.327-32-32 14.327-32 32-32zM160 288c-17.673 0-32-14.327-32-32s14.327-32 32-32 32 14.327 32 32-14.327 32-32 32zM352 480c-17.673 0-32-14.327-32-32s14.327-32 32-32 32 14.327 32 32-14.327 32-32 32z"></path>
          </svg>
              </a>
              <ul class="dropdown-menu">
                <li><a target="_blank" href="http://www.facebook.com/sharer.php?u=https://dev2.portal.gov.ph/web/sample-agency-site/posting-of-vacancies/-/asset_publisher/OixO9kaV3GOf/content/${.vars['reserved-article-url-title'].data}">Facebook</a></li>
                <li><a target="_blank" href="https://twitter.com/intent/tweet?text=Project+Development+Officer&amp;tw_p=tweetbutton&amp;url=https://dev2.portal.gov.ph/web/sample-agency-site/posting-of-vacancies/-/asset_publisher/OixO9kaV3GOf/content/${.vars['reserved-article-url-title'].data}">Twitter</a></li>
              </ul></div> -->
          </li>

            <input style="padding:0;height:0;border:0" type="text" id="copyText" value="https://www.gov.ph"/>
        </ul>
    </div>
    </div>
  </div>
  <div class="details">
    <div class="row field">
      <div class="col-xs-6">
        <p>Date Posted: <strong>
    	<#assign datePosted = getterUtil.getString(.vars['reserved-article-create-date'].data)>
    	<#assign datePosted = dateUtil.parseDate("EEE, dd MMM yyyy", datePosted, locale)>
    	${dateUtil.getDate(datePosted, "MMMM dd, yyyy", locale)}
    	</strong></p>
      </div>
      <div class="col-xs-6">
        <p>Deadline of Application: 
          <strong><#assign DeadlineOfApplication_Data = getterUtil.getString(DeadlineOfApplication.getData())>
            <#if validator.isNotNull(DeadlineOfApplication_Data)>
              <#assign DeadlineOfApplication_DateObj = dateUtil.parseDate("yyyy-MM-dd", DeadlineOfApplication_Data, locale)>

              ${dateUtil.getDate(DeadlineOfApplication_DateObj, "MMMM dd, yyyy", locale)}
            </#if>
          </strong></p>
      </div>
    </div>
    <div class="row field">
      <div class="col-xs-6">
        <p>Nature of Work: <strong>
        	<#if NatureOfWork.getData() != "">
        		${NatureOfWork.getData()}
    		</#if>
    	</strong></p>
      </div>
      <div class="col-xs-6">
        <p>Civil Service Eligibility: <strong>
        	<#if CivilServiceEligibility.getData() != "">
        		${CivilServiceEligibility.getData()}
    		</#if>
		</strong></p>
      </div>
    </div>
    <div class="row field">
      <div class="col-xs-6">
        <p>Salary Grade: <strong>
        	<#if SalaryGrade.getData() != "">
        		${SalaryGrade.getData()}
    		</#if>
		
		</strong></p>
      </div>
      <div class="col-xs-6">
        <p>Other Licenses: <strong>
        	<#if OtherLicenses.getData() != "">
        		${OtherLicenses.getData()}
    		</#if>		
		</strong></p>
      </div>
    </div>
    <div class="row field">
      <div class="col-xs-6">
        <p>Item Number: <strong>
        	<#if ItemNumber.getData() != "">
        		${ItemNumber.getData()}
        	</#if>
		</strong></p>
      </div>
      <div class="col-xs-6">
        <p>Education: <strong>
        	<#if Education.getData() != "">
        		${Education.getData()} 
        	</#if>
		</strong></p>
      </div>
    </div>
    <div class="row field">
      <div class="col-xs-6">
        <p>Region: <strong>
        <#assign journalArticleId = .vars['reserved-article-id'].data>
        <#assign journalArticleResourceLocalServiceUtil = staticUtil["com.liferay.journal.service.JournalArticleResourceLocalServiceUtil"]>
        <#assign assetCategoryLocalServiceUtil = staticUtil["com.liferay.asset.kernel.service.AssetCategoryLocalServiceUtil"]>

        <#assign articleResourcePK = journalArticleResourceLocalServiceUtil.getArticleResourcePrimKey(groupId, journalArticleId)/>
        <#assign categoryList=assetCategoryLocalServiceUtil.getCategories("com.liferay.journal.model.JournalArticle",articleResourcePK) >

        <#list categoryList as categoryList>
        ${categoryList.getName()}
        </#list>
        </strong></p>
      </div>
      <div class="col-xs-6">
        <p>Work Experience: <strong>
        	<#if RequiredWorkExperienceYears.getData() != "">
        		${RequiredWorkExperienceYears.getData()}
        	</#if>
		</strong></p>
      </div>
    </div>
    <div class="row field">
      <div class="col-xs-6">
        <p>City/Municipality: <strong>
        	<#if JobVacancyLocation.CityMunicipality.getData() != "">
        		${JobVacancyLocation.CityMunicipality.getData()}
        	</#if>
		</strong></p>
      </div>
      <div class="col-xs-6">
        <p>Training Hours: <strong>
        	<#if NumberOfTrainingHours1.getData() != "">
    			${NumberOfTrainingHours1.getData()}
    		</#if>
		</strong></p>
      </div>
    </div>
  </div>
  <div class="section job-description">
  	<p><strong>Job Description</strong></p>
  	${JobDescription.getData()}
  </div>
  <div class="section required-competencies">
  	<p><strong>Required Competencies</strong></p>
  	${RequiredCompetencies.getData()}
  </div>
  <div class="section required-documents">
  	<p><strong>Required Documents</strong></p>
  	${ListOfRequiredDocuments.getData()}
  </div>
  <div class="row">
  	<div class="col-sm-6 col-sm-offset-3">
  		<div class="contact">
  			<div class="header">
  				<strong>Interested? Contact:</strong>
  			</div>
  			<div class="details clearfix">
  				<span class="pull-left glyphicon glyphicon-envelope"></span><p>${HRAgencyEmail.getData()}</p>
  				<span class="pull-left glyphicon glyphicon-phone-alt"></span><p>${ContactNumber.getData()}</p>
  			</div>
  		</div>
  	</div>
  </div>
</div>
<script>
function copyToClipboard() {
  var copyText = document.getElementById("copyText");
  copyText.select();
  document.execCommand("copy");
 

  var tooltip = document.getElementById("copyTooltip");
  tooltip.innerHTML = "Copied!";
}

function resetClipboard() {
  var tooltip = document.getElementById("copyTooltip");
  tooltip.innerHTML = "Copy to clipboard";
}
</script>