<style>
.site-nav{background:#fff;font-family:'Trebuchet MS',Arial,Helvetica,sans-serif;font-stretch:normal;letter-spacing:normal;margin-bottom:30px}.site-nav ul{background-color:#fff;list-style:none;margin:0;padding:0}.site-nav ul li{font-weight:700;text-align:left}.site-nav ul li a{padding:15px;margin-bottom:10px;border-left:6px solid teal;background-color:#f2f2f2;background-position:center;transition:background .5s;display:block;text-decoration:none;font-size:1em}.site-nav ul li :hover{background:var(--focus-color) radial-gradient(circle,transparent 1%,var(--focus-color) 1%) center/15000%;box-shadow:none;color:#000}.site-nav ul li :active{border-left:15px solid teal;background-size:100%;transition:background 0s}.site-nav ul .active-nav{border-left:15px solid #fff}
</style>
<div class="site-nav">
<ul>
<#if entries?has_content>
	<#list entries as navigationEntry>
	        <#if themeDisplay.getLayout().getName(themeDisplay.getLocale())==navigationEntry.getName()>
                <#assign _c="active-nav">
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