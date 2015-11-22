package ma.pressing.ecommerce.facade.data;

public class CustomerData extends UserData{
	
	private String civility;
	private String completName;
	private boolean b2b;
	private AddressData addressData;
	
	
	
	public boolean isB2b() {
		return b2b;
	}
	public void setB2b(boolean b2b) {
		this.b2b = b2b;
	}
	public String getCivility() {
		return civility;
	}
	public void setCivility(String civility) {
		this.civility = civility;
	}
	public String getCompletName() {
		return completName;
	}
	public void setCompletName(String completName) {
		this.completName = completName;
	}
	public AddressData getAddressData() {
		return addressData;
	}
	public void setAddressData(AddressData addressData) {
		this.addressData = addressData;
	}
	
}
