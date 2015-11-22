package ma.pressing.ecommerce.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class MediaModel extends AbstractModel implements Serializable {
	
	private static final long serialVersionUID = 744958983705568434L;
	
	@Column(name="ENABLED")
	private boolean enabled;
	

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	
	
}
