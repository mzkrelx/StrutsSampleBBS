<%@ page import="java.util.*, model.*"
    contentType="text/html; charset=Windows-31J"%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<% 
List<Article> articles = (List<Article>) request.getAttribute("articles");
if (articles == null) {
    articles = new ArrayList<Article>();
}
%>

<html:html>
<head>
    <title>Struts 掲示板</title>
</head>
<body>
    <h1>Struts 掲示板</h1>

    <div style="color: red"><html:errors /></div>

    <html:form action="bbs.do" method="POST">
    
        <table border="1">
            <tr>
                <td>名前:<html:text property="name" size="40" /></td>
            </tr>
            <tr>
                <td>本文:<br>
                <html:textarea property="message" rows="10" cols="50" /></td>
            </tr>
            <tr>
        </table>

        <html:submit value="投稿" />
        <html:reset value="リセット" />

    </html:form>
    <hr>

    <logic:iterate id="article" collection="<%= articles %>" type="model.Article">

        <table border="1" width="80%">
            <tr>
                <td><b>名前:</b>
                <bean:write name="article" property="name" /></td>
            </tr>
            <tr>
                <td>
                    <b>本文:</b><br> 
                    <pre>
                        <bean:write name="article" property="message" />
                    </pre>
                </td>
            </tr>
        </table>
        <br>
    </logic:iterate>
</body>
</html:html>
