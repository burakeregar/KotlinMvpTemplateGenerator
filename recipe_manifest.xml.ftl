<recipe>

    <#if requireTheme!false>
  <#include "../common/recipe_theme.xml.ftl" />
    </#if>

    <merge from="AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="../common/root/res/values/manifest_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

</recipe>
