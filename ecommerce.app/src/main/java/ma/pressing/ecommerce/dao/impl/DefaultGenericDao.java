package ma.pressing.ecommerce.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

import ma.pressing.ecommerce.dao.GenericDao;
import ma.pressing.ecommerce.model.AbstractModel;


abstract public class DefaultGenericDao<T extends AbstractModel> implements GenericDao<T> {

	@Autowired
	protected SessionFactory sessionFactory;
    private Class<T> type;
   
	public DefaultGenericDao(Class<T> type) {
		this.type = type;
	}

	public T save(T abstractModel) {
		abstractModel.setCreationDate(new Date());
		sessionFactory.getCurrentSession().save(abstractModel);
		sessionFactory.getCurrentSession().flush();
		return abstractModel;
	}

	public T edit(T abstractModel) {
		abstractModel.setModifiedDate(new Date());
		sessionFactory.getCurrentSession().merge(abstractModel);
		sessionFactory.getCurrentSession().flush();
		return abstractModel ;
	}
	
	public boolean delete(Long modelId) {
		T abstractModel = (T) find(modelId);
		if(abstractModel != null) {
			abstractModel.setDeleted(true);
			edit(abstractModel);
			return true;
		}
		return false;
	}

	@SuppressWarnings("unchecked")
	public T find(Long modelId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(type);
		criteria.add(Restrictions.eq("id", modelId)).add(Restrictions.eq("deleted", false));
		return (T) criteria.uniqueResult();
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findByAttribut(String attribute, Object value){
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(type);
		criteria.add(Restrictions.eq(attribute, value)).add(Restrictions.eq("deleted", false));
		return criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	public List<T> findAll() {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(type);
		criteria.add(Restrictions.eq("deleted", false));
		return criteria.list();
	}
	
	@SuppressWarnings("unchecked")
	public T findOneByAttribut(String attribute, Object value){
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(type);
		criteria.add(Restrictions.eq(attribute, value)).add(Restrictions.eq("deleted", false));
		return (T) criteria.uniqueResult();
	}
}
