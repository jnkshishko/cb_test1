package app.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "employee")
@SequenceGenerator(allocationSize = 1, name = "commonsequence", sequenceName = "commonsequence")
public class Employee implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "commonsequence")
    @Column(name = "id")
    private Long id;

    @Column(name = "surname")
    private String surname;

    @Column(name = "name")
    private String name;

    @Column(name = "patronymic")
    private String patronymic;

    @Column(name = "position")
    private String position;

    @Column(name = "date")
    private Date date;

    @Column(name = "time")
    private Long time;

    @Column(name = "cause")
    private String cause;

    public Employee() {
    }

    public Employee(String surname, String name, String patronymic, String position) {
        this.surname = surname;
        this.name = name;
        this.patronymic = patronymic;
        this.position = position;
    }

    public Employee(String surname, String name, String patronymic, String position, Date date, Long time, String cause) {
        this.surname = surname;
        this.name = name;
        this.patronymic = patronymic;
        this.position = position;
        this.date = date;
        this.time = time;
        this.cause = cause;
    }

    public Long getId() {
        return id;
    }

    public String getSurname() {
        return surname;
    }

    public String getName() {
        return name;
    }

    public String getPatronymic() {
        return patronymic;
    }

    public String getPosition() {
        return position;
    }

    public Date getDate() {
        return date;
    }

    public Long getTime() {
        return time;
    }

    public String getCause() {
        return cause;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setSurname(String sername) {
        this.surname = sername;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPatronymic(String patronymic) {
        this.patronymic = patronymic;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    public String toString() {
        return  "ФИО: " + surname + " " +
                name + " " +
                patronymic + "\n" +
                " ДОЛЖНОСТЬ: " + position + "\n" +
                " ВРЕМЯ: " + date + "  /  \n" +
                " СКОЛЬКО ОТСУТСТВОВАЛ: " + time + " минут \n" +
                " ПРИЧИНА ОТСУТСТВИЯ: " + cause;
    }
}
