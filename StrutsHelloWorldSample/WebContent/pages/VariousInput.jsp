<%@page contentType="text/html; charset=Shift_JIS"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html:html>
<BODY>
    <H1>���낢��ȓ��̓t�H�[���̃T���v��</H1>
    <html:form action="/VariousInput">
    ���͕��i���i�j�̒��͑�����<HR>
        <TABLE border="1">
            <TBODY>
                <TR>
                    <TH>�`�F�b�N�{�b�N�X �f�t�H���g�I�t�icheck1�j</TH>
                    <TD><html:checkbox property="check1" />�`�F�b�N1</TD>
                </TR>
                <TR>
                    <TH>�`�F�b�N�{�b�N�X �f�t�H���g�I���icheck2�jHTML�ŋL�q���Ă���</TH>
                    <TD><INPUT type="checkbox" name="check2"
                        checked>�`�F�b�N2</TD>
                </TR>
                <TR>
                    <TH rowspan="2">�}���`�{�b�N�X(multi1)
                        ����multi1�ŕ����̑I�����T�|�[�g</TH>
                    <TD><html:multibox property="multi1"
                            value="Check1" />�`�F�b�N1</TD>
                </TR>
                <TR>
                    <TD><html:multibox property="multi1"
                            value="Check2" />�`�F�b�N2</TD>
                </TR>
                <TR>
                    <TH>���W�I�{�^��(radio1)</TH>
                    <TD><html:radio property="radio1"
                            value="check1">���W�I1</html:radio></TD>
                </TR>
                <TR>
                    <TH>�Z���N�g(select2) �����I���\</TH>
                    <TD><html:select property="select2"
                            multiple="true" size="3">
                            <html:option value="S1">���X�g1</html:option>
                            <html:option value="S2">���X�g2</html:option>
                            <html:option value="S3">���X�g3</html:option>
                        </html:select></TD>
                </TR>
                <TR>
                    <TD><html:submit value="���M" /></TD>
                </TR>
            </TBODY>
        </TABLE>
    </html:form>
</BODY>
</html:html>