package ma.pressing.ecommerce.service;

import ma.pressing.ecommerce.model.EmployeeModel;

import java.util.List;

/**
 * Created by Night Fox on 12/27/2015.
 */
public interface EmployeeService {
    public EmployeeModel save(EmployeeModel employeeModel);
    public EmployeeModel edit(EmployeeModel employeeModel);
    public void delete(EmployeeModel employeeModel);
    public EmployeeModel findEmployeeById(Long idEmployee);
    public List<EmployeeModel> getAllEmployees();
    public EmployeeModel findEmployeeByAttribut(String attribute, Object value);
    public EmployeeModel getCurrentEmployee();
}
