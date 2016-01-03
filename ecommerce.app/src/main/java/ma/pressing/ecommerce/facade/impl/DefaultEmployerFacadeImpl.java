package ma.pressing.ecommerce.facade.impl;

import ma.pressing.ecommerce.facade.DefaultEmployerFacade;
import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.EmployeeData;
import ma.pressing.ecommerce.model.EmployeeModel;
import ma.pressing.ecommerce.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

/**
 * Created by Night Fox on 12/27/2015.
 */
@Component("defaultEmployeeFacade")
public class DefaultEmployerFacadeImpl implements DefaultEmployerFacade {

    @Autowired
    EmployeeService employeeService;

    @Resource(name = "employeePopulator")
    DefaultPopulator<EmployeeModel, EmployeeData> employeePopulator;

    @Override
    public EmployeeData getCurrentEmployee() {

        EmployeeModel employeeModel = employeeService.getCurrentEmployee();
        if (employeeModel != null) {
            EmployeeData employeeData = new EmployeeData();
            employeePopulator.populate(employeeModel, employeeData);
            return employeeData;
        }
        return null;
    }
}
