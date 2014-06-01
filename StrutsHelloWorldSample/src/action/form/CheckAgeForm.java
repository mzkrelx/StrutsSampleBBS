
package action.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class CheckAgeForm extends ActionForm{
    private int age;
    
    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest req) {
        
        
        ActionErrors errors = new ActionErrors();
        
        try{
            String ageString = req.getParameter("age");
          
            //1)���̓f�[�^�̕K�{�`�F�b�N
            if(ageString == null || "".equals(ageString)){
                errors.add("age",new ActionMessage("error.age.required"));
                return errors;
            }
          
            int age = Integer.parseInt(ageString);
        
            //2)���̓f�[�^�̐��l�͈̔̓`�F�b�N
            if(age<0 || age >200){
                //���؎��s
                //age�v���p�e�B�̌��؎��s�Ȃ̂ŁAage�v���p�e�B�� �G���[���b�Z�[�W�̃L�[��error.age��ݒ肷��B
                errors.add("age",new ActionMessage("error.age.range"));
            }
        }catch(NumberFormatException ex){
             //3)���̓f�[�^�̌^�`�F�b�N
             errors.add("age",new ActionMessage("error.age.notint"));
        }
        return errors;
    }

}
