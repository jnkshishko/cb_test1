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

    public List<Employee> getEmployee(Employee employee) {

        String query = "SELECT e FROM Employee e WHERE e.surname = :surname AND e.name = :name AND e.patronymic = :patronymic AND e.position = :position";
        TypedQuery<Employee> namedQuery = em.createQuery(query, Employee.class).setParameter("surname", employee.getSurname())
                                        .setParameter("name", employee.getName()).setParameter("patronymic", employee.getPatronymic())
                                        .setParameter("position", employee.getPosition());

        return namedQuery.getResultList();

    }

    public List<Employee> getAll() {

        TypedQuery<Employee> namedQuery = em.createQuery("SELECT e FROM Employee e", Employee.class);
        return namedQuery.getResultList();

    }

}
