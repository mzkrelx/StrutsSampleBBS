<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html:html>
    <BODY>
        <!-- 1)HTMLのFORMタグに変換される -->
        <html:form action="/HelloWorld" >
    
            <!-- 2)メッセージリソースを表示する -->
            <bean:message key="hello" /><BR>
        
            名前を入力してください。<BR><html:text property="name" /><BR>
            <html:submit>
              <bean:message key="hello" />
            </html:submit>
        </html:form>
    </BODY>
</html:html>