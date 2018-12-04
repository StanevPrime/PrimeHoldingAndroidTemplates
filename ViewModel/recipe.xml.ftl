<?xml version="1.0"?>
<recipe>
 
    <instantiate from="src/app_package/ViewModel.kt.ftl"
                 to="${escapeXmlAttribute(srcOut)}/${viewModelFileName}.kt" />
    <copy from="src/app_package/viewmodel" />

    <open file="${srcOut}/${viewModelFileName}.kt" />
</recipe>