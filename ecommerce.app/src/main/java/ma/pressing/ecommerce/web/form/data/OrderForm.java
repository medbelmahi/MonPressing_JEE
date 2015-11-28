package ma.pressing.ecommerce.web.form.data;

import java.util.List;

public class OrderForm {

	private String codeDeliveryMode;
	private String codeCollectingMode;
	private List<LingeForm> listLingeForm;
	
	
	public String getCodeDeliveryMode() {
		return codeDeliveryMode;
	}
	public void setCodeDeliveryMode(String codeDeliveryMode) {
		this.codeDeliveryMode = codeDeliveryMode;
	}
	public String getCodeCollectingMode() {
		return codeCollectingMode;
	}
	public void setCodeCollectingMode(String codeCollectingMode) {
		this.codeCollectingMode = codeCollectingMode;
	}
	public List<LingeForm> getListLingeForm() {
		return listLingeForm;
	}
	public void setListLingeForm(List<LingeForm> listLingeForm) {
		this.listLingeForm = listLingeForm;
	}
}