<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<html:html>
    <BODY>
        <!-- 1)HTML��FORM�^�O�ɕϊ������ -->
        <html:form action="/HelloWorld" >
    
            <!-- 2)���b�Z�[�W���\�[�X��\������ -->
            <bean:message key="hello" /><BR>
        
            ���O����͂��Ă��������B<BR><html:text property="name" /><BR>
            <html:submit>
              <bean:message key="hello" />
            </html:submit>
        </html:form>
    </BODY>
</html:html>