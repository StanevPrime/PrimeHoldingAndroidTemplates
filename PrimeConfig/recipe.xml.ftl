<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
   <@kt.addAllKotlinDependencies />
    <dependency mavenUrl="androidx.appcompat:appcompat:1.+" />
    <dependency mavenUrl="androidx.constraintlayout:constraintlayout:1.+" />
    <dependency mavenUrl="androidx.lifecycle:lifecycle-extensions:2.+" />
    <dependency mavenUrl="com.google.dagger:dagger:2.+" />
    <dependency mavenUrl="com.jakewharton.rxbinding2:rxbinding-appcompat-v7-kotlin:2.+" />
    <dependency mavenUrl="com.jakewharton.rxbinding2:rxbinding-design-kotlin:2.+" />
    <dependency mavenUrl="com.jakewharton.rxbinding2:rxbinding-kotlin:2.+" />
    <dependency mavenUrl="com.jakewharton.rxbinding2:rxbinding-recyclerview-v7-kotlin:2.+" />
    <dependency mavenUrl="com.jakewharton.rxbinding2:rxbinding-support-v4-kotlin:2.+" />
    <dependency mavenUrl="io.reactivex.rxjava2:rxandroid:2.+" />
    <dependency mavenUrl="io.reactivex.rxjava2:rxjava:2.+" />
    <dependency mavenUrl="io.reactivex.rxjava2:rxkotlin:2.+" />
	<#if addRetrofit>
		<dependency mavenUrl="com.squareup.retrofit2:adapter-rxjava2:2.+" />
		<dependency mavenUrl="com.squareup.retrofit2:converter-gson:2.+" />
		<dependency mavenUrl="com.squareup.retrofit2:retrofit:2.+" />
    </#if>
	<#if addGlide>
			<dependency mavenUrl="com.github.bumptech.glide:glide:4.+" />

	</#if>
	<#if addPicasso>
			<dependency mavenUrl="com.squareup.picasso:picasso:2.+" />
	</#if>

	
    <merge from="root/src/app_package/manifest/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
  
     <merge from="root/build.gradle.ftl"
               to="${escapeXmlAttribute(projectOut)}/build.gradle" />	
  
	<mkdir at="${escapeXmlAttribute(srcOut)}/api/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/application/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/di/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/di/component/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/di/module" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/di/util" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/misc/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/misc/extension/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/model/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/repo/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/service/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/view/" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/viewmodel/" />

 	<instantiate from="root/src/app_package/model/IError.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/model/error/IError.kt" />		
		
	<instantiate from="root/src/app_package/model/HttpStatusCode.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/model/api/HttpStatusCode.kt" />					
	
	<instantiate from="root/src/app_package/model/ApiResult.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/model/api/ApiResult.kt" />				
				 
	<instantiate from="root/src/app_package/model/Message.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/model/api/Message.kt" />		
				 
	<instantiate from="root/src/app_package/model/ErrorDetail.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/model/api/ErrorDetail.kt" />					 
	
	<instantiate from="root/src/app_package/model/ApiError.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/model/api/ApiError.kt" />	

	<instantiate from="root/src/app_package/misc/RxExtensions.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/misc/extension/RxExtensions.kt" />			

	<instantiate from="root/src/app_package/di/ViewModelKey.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/util/ViewModelKey.kt" />			 

	<instantiate from="root/src/app_package/di/ViewModelFactory.java.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/util/ViewModelFactory.java" />		 
	
	<instantiate from="root/src/app_package/di/AppComponent.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/component/AppComponent.kt" />
				 
	<instantiate from="root/src/app_package/di/AppModule.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/module/AppModule.kt" />					 
	
				 
	<instantiate from="root/src/app_package/di/ViewModelModule.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/module/ViewModelModule.kt" />					 
				 
	<#if addRetrofit>
		<mkdir at="${escapeXmlAttribute(srcOut)}/api/" />
	
		<instantiate from="root/src/app_package/di/NetworkModule.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/di/module/NetworkModule.kt" />	
				 
		<instantiate from="root/src/app_package/api/RestApi.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/api/RestApi.kt" />		

	</#if>
	
	<#if addBaseActivity>	
		<instantiate from="root/src/app_package/view/BaseActivity.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/view/base/BaseActivity.kt" />		
	</#if>
	<#if addLoadingViewModel>
		<instantiate from="root/src/app_package/viewmodel/LoadingViewModel.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/viewmodel/loading/LoadingViewModel.kt" />	
	</#if>


			 
	<instantiate from="root/src/app_package/application/BaseApplication.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/application/BaseApplication.kt" />	
	
 
			   
	
			   
</recipe>

