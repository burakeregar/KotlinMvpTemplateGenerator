<?xml version="1.0"?>
<recipe>
    <#include "recipe_manifest.xml.ftl" />

    <instantiate from="simple_layout.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
				   
<#assign packagePath = "${packageName}">
<#assign packagePath = packagePath?replace('.','/')>

    <instantiate from="root/src/app_package/BaseActivity.kt.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/kotlin/${packagePath}/${activityClass}Activity.kt" />
				   
    <instantiate from="root/src/app_package/BaseActivityComponent.kt.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/kotlin/${packagePath}/di/${activityClass}ActivityComponent.kt" />
			   
    <instantiate from="root/src/app_package/BaseActivityModule.kt.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/kotlin/${packagePath}/di/${activityClass}ActivityModule.kt" />
			   
    <instantiate from="root/src/app_package/BasePresenter.kt.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/kotlin/${packagePath}/presenter/${activityClass}Presenter.kt" />
				   
    <instantiate from="root/src/app_package/BaseView.kt.ftl"
                   to="${escapeXmlAttribute(manifestOut)}/kotlin/${packagePath}/presenter/${activityClass}View.kt" />
 						   
    <open file="${escapeXmlAttribute(manifestOut)}/kotlin/${packagePath}/${activityClass}Activity.kt" />
	
	
</recipe>
