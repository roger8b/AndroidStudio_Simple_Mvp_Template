<recipe>
    <instantiate from="root/src/app_package/SimpleContract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${contractName}.kt" />

    <instantiate from="root/src/app_package/SimplePresenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.kt" />

</recipe>