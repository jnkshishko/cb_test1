package app;

import app.model.Employee;

import javax.ejb.Stateless;
import javax.persistence.*;
import java.util.List;

@Stateless
public class EmployeeService {

    @PersistenceContext(unitName = "employee")
    private EntityManager em;

    public Employee add(Employee employee) {

        em.persist(employee);
        return employee;

    }

    public Employee getEmployee(Employee employee) {

        return em.find(Employee.class, employee);

    }

    public List<Employee> getAll() {

        TypedQuery<Employee> namedQuery = em.createQuery("SELECT e FROM Employee e", Employee.class);
        return namedQuery.getResultList();

    }

}
