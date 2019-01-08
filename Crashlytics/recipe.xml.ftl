<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
   <@kt.addAllKotlinDependencies />
	<#if addCrashlytics>
		<dependency mavenUrl="com.google.firebase:firebase-core:16.+" />
		<dependency mavenUrl="com.crashlytics.sdk.android:crashlytics:2.+" />
		<merge from="root/crashlytics/build.gradle.ftl"
               to="${escapeXmlAttribute(projectOut)}/build.gradle" />
			   
		<merge from="root/crashlytics/build.gradle.app.ftl"
               to="${escapeXmlAttribute(topOut)}/build.gradle" />	  

		<merge from="root/crashlytics/src/app_package/manifest/AndroidManifest.xml.ftl"
				to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />			   
    </#if>
  			   
	<#if addAnalytics>
		<dependency mavenUrl="com.google.firebase:firebase-core:16.+" />

	<instantiate from="root/analytics/app_package/di/FirebaseModule.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/module/FirebaseModule.kt" />			
				 
	<merge from="root/analytics/app_package/di/AppComponent.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/component/AppComponent.kt" />						 
    </#if>

</recipe>

