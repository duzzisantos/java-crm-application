/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;


/**
 *
 * @author Duzie Uche-Abba
 * Date: June 29 2024
 */
@Entity
@Table(name = "ACCOUNTMANAGERS")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Accountmanagers.findAll", query = "SELECT a FROM Accountmanagers a"),
    @NamedQuery(name = "Accountmanagers.findByAccountManagerId", query = "SELECT a FROM Accountmanagers a WHERE a.accountManagerId = :accountManagerId"),
    @NamedQuery(name = "Accountmanagers.findByFirstName", query = "SELECT a FROM Accountmanagers a WHERE a.firstName = :firstName"),
    @NamedQuery(name = "Accountmanagers.findByLastName", query = "SELECT a FROM Accountmanagers a WHERE a.lastName = :lastName"),
    @NamedQuery(name = "Accountmanagers.findByProductSpecialization", query = "SELECT a FROM Accountmanagers a WHERE a.productSpecialization = :productSpecialization"),
    @NamedQuery(name = "Accountmanagers.findByGradeLevel", query = "SELECT a FROM Accountmanagers a WHERE a.gradeLevel = :gradeLevel"),
    @NamedQuery(name = "Accountmanagers.findByEmail", query = "SELECT a FROM Accountmanagers a WHERE a.email = :email"),
    @NamedQuery(name = "Accountmanagers.findByPhoneNumber", query = "SELECT a FROM Accountmanagers a WHERE a.phoneNumber = :phoneNumber"),
    @NamedQuery(name = "Accountmanagers.findByDateOfEmployment", query = "SELECT a FROM Accountmanagers a WHERE a.dateOfEmployment = :dateOfEmployment")})
public class Accountmanagers implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ACCOUNT_MANAGER_ID", nullable = false)
    private Integer accountManagerId;
    @Size(max = 50)
    @Column(name = "FIRST_NAME")
    private String firstName;
    @Size(max = 50)
    @Column(name = "LAST_NAME")
    private String lastName;
    @Size(max = 30)
    @Column(name = "PRODUCT_SPECIALIZATION")
    private String productSpecialization;
    @Size(max = 2)
    @Column(name = "GRADE_LEVEL")
    private String gradeLevel;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 30)
    @Column(name = "EMAIL")
    private String email;
    @Size(max = 15)
    @Column(name = "PHONE_NUMBER")
    private String phoneNumber;
    @Column(name = "DATE_OF_EMPLOYMENT")
    @Temporal(TemporalType.DATE)
    private Date dateOfEmployment;
    

    public Accountmanagers() {
    }

    public Accountmanagers(Integer accountManagerId) {
        this.accountManagerId = accountManagerId;
    }

    public Integer getAccountManagerId() {
        return accountManagerId;
    }

    public void setAccountManagerId(Integer accountManagerId) {
        this.accountManagerId = accountManagerId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getProductSpecialization() {
        return productSpecialization;
    }

    public void setProductSpecialization(String productSpecialization) {
        this.productSpecialization = productSpecialization;
    }

    public String getGradeLevel() {
        return gradeLevel;
    }

    public void setGradeLevel(String gradeLevel) {
        this.gradeLevel = gradeLevel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Date getDateOfEmployment() {
        return dateOfEmployment;
    }

    public void setDateOfEmployment(Date dateOfEmployment) {
        this.dateOfEmployment = dateOfEmployment;
    }

  

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (accountManagerId != null ? accountManagerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Accountmanagers)) {
            return false;
        }
        Accountmanagers other = (Accountmanagers) object;
        if ((this.accountManagerId == null && other.accountManagerId != null) || (this.accountManagerId != null && !this.accountManagerId.equals(other.accountManagerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Accountmanagers[ accountManagerId=" + accountManagerId + " ]";
    }
    
}
