

# History

## JDBC

Allows java programs to fully interact with the dabase. SQL is not portable. Continuously having to convert data back and forth into objects.

## JDO (Java Data Objects)

Cada base de datos debia de producir .class y ser compatible con los .class de otras marcas. Nunca fue adoptado realmente.

## JPA

Al tener productos satisfactorios como toplink o hibernate, se crea un estandar, pero no totalmente basado en uno de esos productos, realizar un estandar basado en un producto seria perjudicial para el producto y para el lenguaje, debido a que el producto quedaria cerrado por el estandar, y el lenguaje ligado a un producto. El cliente debe de tener la portabilidad de cambiar de marca si esta no la satisface.

+ Non-intrusive persistence
+ Object Queries: not tied to the database schema, based in the entity model

# JPA

## Entity

+ persistability: it can be created in a persistent store (not automatically persisted)
+ Transactionality:
+ Granularity



## Anotations

```
@Id
@GeneratedValue(strategy=GenerationType.Table, generator="asdfasd")
private Integer employeeId;
```



### GeneratedValue: Strategy

+ AUTO
+ IDENTITY
+ SEQUENCE: Uses @SequenceGenerator
+ TABLE: Separate table with primary key, uses @TableGenerator



```
@Table(
	name = "asdf",
	uniqueContrains = {@UniqueConstraint(columnNames="columnA")}
)
public class Employee {


	@Basic(optinal = false) // optinal tambien esta en Column
	private int age;
	
	@Column(name="FNAME",length=100,nullable=false)
	private String  firstName;

}
```



### Many to One

`owner`

```java
	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="EMPLOYEE_ID")
    private Set<AccountEntity> accounts;
```

child

```java
	@ManyToOne
    private EmployeeEntity employee;
```



>  https://www.baeldung.com/hibernate-one-to-many



```java

@Entity
@Table(name="CART")
public class Cart {
 
    //...
 
    @OneToMany(mappedBy="cart")
    private Set<Items> items;
     
    // getters and setters
}
```

```java
@Entity
@Table(name="ITEMS")
public class Items {
     
    //...
    @ManyToOne
    @JoinColumn(name="cart_id", nullable=false)
    private Cart cart;
 
    public Items() {}
     
    // getters and setters
}
```



## Many to Many

> https://www.baeldung.com/jpa-many-to-many