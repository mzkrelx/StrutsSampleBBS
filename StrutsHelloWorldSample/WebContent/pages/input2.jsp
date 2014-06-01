<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<html:html>
 <BODY>
  <H1>バリデーション 検証の例2 </H1>
  
  <!-- html:errorsタグの利用　-->
  <html:errors />
  
  あなたの年齢を入力してください。（0以上200以下の整数でお願いいたします。）
  <html:form action="/CheckAge2" >
    年齢<html:text property="age" />
    <!-- html:errorsタグの利用　-->
    <html:errors property="age" />
    <html:submit value="報告" />
  </html:form>
  
 </BODY>
</html:html>