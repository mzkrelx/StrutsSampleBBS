<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html:html>
 <BODY>
  <H1>�o���f�[�V���� ���؂̗�3 </H1>
  
  <!-- html:errors�^�O�̗��p�@-->
  <html:errors />
  
  ���Ȃ��̔N�����͂��Ă��������B�i0�ȏ�200�ȉ��̐����ł��肢�������܂��B�j
  <!-- 1)javascript�ɂ�錟�� -->
  <html:javascript formName="CheckAgeForm3" />
  
  <!-- 2)submit����javascript�N���̐ݒ� -->
  <html:form action="/CheckAge3" onsubmit="return validateCheckAgeForm3(this)" >
    �N��<html:text property="age" />
    <!-- html:errors�^�O�̗��p�@-->
    <html:errors property="age" />
    <html:submit value="��" />
  </html:form>
  
 </BODY>
</html:html>