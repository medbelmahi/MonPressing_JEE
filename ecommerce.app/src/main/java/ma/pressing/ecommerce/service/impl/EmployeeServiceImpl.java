package ma.pressing.ecommerce.service.impl;

import ma.pressing.ecommerce.dao.EmployeeDao;
import ma.pressing.ecommerce.model.EmployeeModel;
import ma.pressing.ecommerce.service.EmployeeService;
import ma.pressing.ecommerce.service.MyUserDetailsService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Night Fox on 12/27/2015.
 */
@Service("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeDao employeeDao;

    @Autowired
    MyUserDetailsService myUserDetailsService;

    @Override
    public EmployeeModel save(EmployeeModel employeeModel) {
        return employeeDao.save(employeeModel);
    }

    @Override
    public EmployeeModel edit(EmployeeModel employeeModel) {
        return employeeDao.edit(employeeModel);
    }

    @Override
    public void delete(EmployeeModel employeeModel) {
        employeeDao.delete(employeeModel.getId());
    }

    @Override
    public EmployeeModel findEmployeeById(Long idEmployee) {
        return employeeDao.find(idEmployee);
    }

    @Override
    public List<EmployeeModel> getAllEmployees() {
        return employeeDao.findAll();
    }

    @Override
    public EmployeeModel findEmployeeByAttribut(String attribute, Object value) {
        return employeeDao.findOneByAttribut(attribute, value);
    }

    @Override
    public EmployeeModel getCurrentEmployee() {

        String username = myUserDetailsService.getCurrentUserName();

        if (username != null && StringUtils.isNotEmpty(username)) {
            EmployeeModel employeeModel = findEmployeeByAttribut("email", username);

            if (employeeModel != null) {
                return employeeModel;
            }
        }

        return null;
    }
}
