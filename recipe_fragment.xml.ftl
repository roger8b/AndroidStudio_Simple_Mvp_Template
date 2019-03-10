<recipe>
    <dependency mavenUrl="com.android.support.constraint:constraint-layout:+" />

    <instantiate from="root/res/layout/fragment_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml"/>

    <instantiate from="root/src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${fragmentClass}.kt"/>
    
</recipe>
