package ma.pressing.ecommerce.dao;

import java.util.List;

import ma.pressing.ecommerce.model.AbstractModel;

public interface GenericDao<T extends AbstractModel> {
	public T save(T abstractModel);
    public T edit(T abstractModel);
    public boolean delete(Long modelId);
    public T find(Long modelId);
    public List<T> findAll();
    public List<T> findByAttribut(String attribute, Object value);
    public T findOneByAttribut(String attribute, Object value);
}
