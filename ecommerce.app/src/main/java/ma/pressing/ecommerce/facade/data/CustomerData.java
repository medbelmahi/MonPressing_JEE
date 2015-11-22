package ma.pressing.ecommerce.facade.data;

public class CustomerData extends UserData{
	
	private String civility;
	private String completName;
	private AddressData addressData;
	
	
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
