package ma.pressing.ecommerce.dao.impl;

import ma.pressing.ecommerce.dao.EmployeeDao;
import ma.pressing.ecommerce.model.EmployeeModel;
import org.springframework.stereotype.Repository;

/**
 * Created by Night Fox on 12/27/2015.
 */
@Repository("employeeDao")
public class DefaultEmployeeDao extends DefaultGenericDao<EmployeeModel> implements EmployeeDao {

    public DefaultEmployeeDao() {
        super(EmployeeModel.class);
    }
}
