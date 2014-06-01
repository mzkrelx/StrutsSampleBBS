package action.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class BBSForm extends ActionForm {

	private String name;
	private String message;

	private static final int NAME_MAX_LENGTH = 20;

	/**
	 * コンストラクタ
	 */
	public BBSForm() {
	}

	public void setName(String s) {
		this.name = s;
	}
	public String getName() {
		return name;
	}

	public void setMessage(String s) {
		this.message = s;
	}
	public String getMessage() {
		return message;
	}

	public void clear() {
		name = "";
		message = "";
	}

    @Override
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest req) {

        ActionErrors errors = new ActionErrors();

        String name = req.getParameter("name");

        // 1)名前の必須チェック
        if(name == null || "".equals(name)){
            errors.add("name", new ActionMessage("errors.required", "名前"));
            return errors;
        }

        // 2)名前の長さチェック
        if(name.length() > NAME_MAX_LENGTH){
            errors.add("name", new ActionMessage("errors.maxlength", "名前", NAME_MAX_LENGTH));
        }

        return errors;
    }

}