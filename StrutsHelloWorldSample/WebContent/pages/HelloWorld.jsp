<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html> 
    <BODY>
      <H1>
        <bean:message key="welcome" /> 
        <!-- 1)write�^�O�𗘗p����Form�N���X�̓��e��\�����Ă��� -->
        <bean:write name="HelloWorldForm" property="name" /> ���� 
      </H1>
    </BODY>
</html:html>