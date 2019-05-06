<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <#--  <a class="navbar-brand" href="#">Interns</a>  -->
    </div>
    <ul class="nav navbar-nav">
     <#if entries?has_content>
	<#list entries as navigationEntry>
	        <#if themeDisplay.getLayout().getName(themeDisplay.getLocale())==navigationEntry.getName()>
                <#assign _c="active">
            <#else>
                <#assign _c="">
            </#if>
            <li class="${_c}">
		    <a href="${navigationEntry.getURL()}">${navigationEntry.getName()}</a>
		    </li>
		
	</#list>
</#if>
    </ul>
  </div>
</nav>