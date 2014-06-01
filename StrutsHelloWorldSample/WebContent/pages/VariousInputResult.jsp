<%@page contentType="text/html; charset=Shift_JIS" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html>
 <BODY>
  <TABLE border="1">
   <TBODY>
    <TR>
     <TH bgcolor="#000000"><FONT color="#ffffff">check1</FONT></TH>
     <TD><bean:write name="VariousInputForm" scope="session" property="check1" /></TD>
    </TR>
    <TR>
     <TH bgcolor="#000000"><FONT color="#ffffff">check2(デフォルトはオン）</FONT></TH>
     <TD><bean:write name="VariousInputForm" scope="session" property="check2" /></TD>
    </TR>
    <TR>
     <TH bgcolor="#000000"><FONT color="#ffffff">一まとまりで管理するチェックボックス(muliti1)</FONT></TH>
     <TD><logic:iterate id="multi1" name="VariousInputForm" scope="session" property="multi1" >
          <bean:write name="multi1" />
         </logic:iterate>
     </TD>
    </TR>
    <TR>
     <TH bgcolor="#000000"><FONT color="#ffffff">ラジオボタン（押されていればcheck1という値になる）</FONT></TH>
     <TD><bean:write name="VariousInputForm" scope="session" property="radio1" /></TD>
    </TR>
    <TR>
     <TH bgcolor="#000000"><FONT color="#ffffff">リストボックス（select2）</FONT></TH>
     <TD><logic:iterate id="select2" name="VariousInputForm" scope="session" property="select2" >
          <bean:write name="select2" />
         </logic:iterate>
     </TD>
    </TR>
   </TBODY>
  </TABLE>
 </BODY>
</html:html>