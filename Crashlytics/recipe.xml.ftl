<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
   <@kt.addAllKotlinDependencies />
	<#if addCrashlytics>
		<dependency mavenUrl="com.google.firebase:firebase-core:16.+" />
		<dependency mavenUrl="com.crashlytics.sdk.android:crashlytics:2.+" />
		<merge from="root/build.gradle.ftl"
               to="${escapeXmlAttribute(projectOut)}/build.gradle" />
			   
		<merge from="root/build.gradle.app.ftl"
               to="${escapeXmlAttribute(topOut)}/build.gradle" />	  

		<merge from="root/src/app_package/manifest/AndroidManifest.xml.ftl"
				to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />			   
    </#if>
  			   
</recipe>

