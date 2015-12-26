package ma.pressing.ecommerce.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@MappedSuperclass	
public class AbstractModel implements Serializable {
	private static final long serialVersionUID = 2441143639225181443L;
	
	@Id//
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ID")
	protected Long id;
	
	@Column(name="DELETED", nullable=false, columnDefinition="boolean default false")
	protected boolean deleted;
	
	@Column(name="CREATION_DATE")
	protected Date creationDate;
	
	@Column(name="MODIFIED_DATE")
	protected Date modifiedDate;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
}
