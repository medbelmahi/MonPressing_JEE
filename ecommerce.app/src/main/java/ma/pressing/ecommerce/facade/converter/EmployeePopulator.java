package ma.pressing.ecommerce.facade.converter;

import ma.pressing.ecommerce.facade.DefaultPopulator;
import ma.pressing.ecommerce.facade.data.EmployeeData;
import ma.pressing.ecommerce.model.EmployeeModel;
import org.springframework.stereotype.Component;

@Component("employeePopulator")
public class EmployeePopulator implements DefaultPopulator<EmployeeModel, EmployeeData> {

    @Override
    public void populate(final EmployeeModel employeeModel, final EmployeeData employeeData) {
        employeeData.setEmail(employeeModel.getEmail());
        employeeData.setCompletName(employeeModel.getCompletName());
        employeeData.setEnabled(employeeModel.isEnabled());
    }
}
