<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>

 <!-- 1)������Form��A�N�V��������Ȃ�̂Ń��N�G�X�g�p�����[�^������o�� -->
 <bean:parameter id="result" name="age" />

 <BODY>
  <H1>�o���f�[�V���� ���؂̗� </H1>
  ���Ȃ��̔N��́A<bean:write name="result" />�ł��B
 </BODY>
</html:html>