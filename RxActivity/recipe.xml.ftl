<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

    <instantiate from="src/app_package/RxActivity.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${activityName}Activity.kt" />

    <instantiate from="src/app_package/Activity_Layout.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayout}.xml"/>

    <instantiate from="src/app_package/ViewModel.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModel}.kt" />

    <open file="${srcOut}/${activityName}Activity.kt"/>
    <open file="${resOut}/layout/${activityLayout}.xml" />
    <open file="${srcOut}/${viewModel}.kt" />
</recipe>