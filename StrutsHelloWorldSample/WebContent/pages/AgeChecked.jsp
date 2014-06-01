<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>

<html:html>

 <!-- 1)複数のFormやアクションからなるのでリクエストパラメータから取り出す -->
 <bean:parameter id="result" name="age" />

 <BODY>
  <H1>バリデーション 検証の例 </H1>
  あなたの年齢は、<bean:write name="result" />です。
 </BODY>
</html:html>