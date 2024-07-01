package entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2024-06-30T23:39:16")
@StaticMetamodel(Customers.class)
public class Customers_ { 

    public static volatile SingularAttribute<Customers, String> firstName;
    public static volatile SingularAttribute<Customers, String> lastName;
    public static volatile SingularAttribute<Customers, Integer> zipCode;
    public static volatile SingularAttribute<Customers, String> postalAddress;
    public static volatile SingularAttribute<Customers, String> phoneNumber;
    public static volatile SingularAttribute<Customers, String> city;
    public static volatile SingularAttribute<Customers, Integer> customerId;
    public static volatile SingularAttribute<Customers, Date> dateOfBirth;
    public static volatile SingularAttribute<Customers, String> usState;
    public static volatile SingularAttribute<Customers, String> email;

}