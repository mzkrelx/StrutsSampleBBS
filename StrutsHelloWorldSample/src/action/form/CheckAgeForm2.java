
package action.form;

import org.apache.struts.validator.ValidatorForm;

public class CheckAgeForm2 extends ValidatorForm {
	private String age;

	public CheckAgeForm2(){
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
}
