# Hibernate

## MariaDB

* `build.gradle`:

```
dependencies {
    implementation "org.hibernate:hibernate-core:5.4.4.Final"
    implementation 'org.mariadb.jdbc:mariadb-java-client:2.4.2'
}
```

* `hibernate.cfg.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE hibernate-configuration PUBLIC
        "-//Hibernate/Hibernate Configuration DTD 3.0//EN"
        "http://www.hibernate.org/dtd/hibernate-configuration-3.0.dtd">
<hibernate-configuration>
    <session-factory>

        <!-- database connection properties -->
        <property name="hibernate.connection.driver_class">org.mariadb.jdbc.Driver</property>
        <property name="hibernate.connection.url">jdbc:mariadb://localhost:3306/phonetic</property>
        <property name="hibernate.connection.username">tikiram2</property>
        <property name="hibernate.connection.password">YYP!la0g0&amp;#R</property>
        <property name="hibernate.dialect">org.hibernate.dialect.MariaDB10Dialect</property>

        <!-- show mysql queries output in console -->
        <property name="hibernate.show_sql">true</property>

        <!-- manage automatic database creation -->
        <property name="hibernate.hbm2ddl.auto">create-drop</property>
<!--        <property name="hibernate.hbm2ddl.auto">none</property>-->
<!--        <property name="hibernate.hbm2ddl.auto">update</property>-->
<!--        <property name="hibernate.hbm2ddl.auto">validate</property>-->

        <!-- add resources here -->
<!--        <mapping resource="Book.hbm.xml"/>-->

    </session-factory>
</hibernate-configuration>
```

####  Database creation
`create-drop`:  testing, development
`none`:  production



* `HibernateUtil.java`

```java
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

    private static final SessionFactory sessionFactory;

    static {
        try {

            sessionFactory = new Configuration()
                     
                    // MODELS
                    
                    .addAnnotatedClass(Word.class)
                    .addAnnotatedClass(PronunciationType.class)
                    .addAnnotatedClass(Pronunciation.class)
                
                    .configure()
                    .buildSessionFactory();

        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession() throws HibernateException {
        return sessionFactory.openSession();
    }

    public static void shutdown() {
        sessionFactory.close();
    }
}
```

## Models

They use annotations instead of xml configuration files.

```java
import javax.persistence.*;

@Entity
@Table(name = "PronunciationType")
public class PronunciationType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pronunciation_type")
    private int id;

    @Column(name = "name")
    private String name;

    public PronunciationType(){
    }

    public PronunciationType(String name){
        this.name = name;
    }

    public int getId() {
        return id;
    }
    public String getName() {
        return name;
    }

}
```

```java
import javax.persistence.*;

@Entity
@Table(name = "Pronunciation")
public class Pronunciation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_pronunciation")
    private int id;

    @Column(name = "name")
    private String name;

    @ManyToOne
    @JoinColumn(name = "id_word")
    private Word word;

    @ManyToOne
    @JoinColumn(name = "id_pronunciation_type")
    private PronunciationType type;

    public Pronunciation(){

    }
    public Pronunciation(String name, Word word, PronunciationType pronunciationType){
        this.name = name;
        this.word = word;
        type = pronunciationType;
    }

}
```

## Code

```java
private static void addWords() {

        Transaction transaction = null;
        try (Session session = HibernateUtil.getSession()) {

            List<PronunciationType> types = session
                .createQuery("from PronunciationType", PronunciationType.class).list();
            
            PronunciationType type = types.get(0);

            Word word = new Word("water");
            Pronunciation pronunciation = new Pronunciation("ˈwɔtər", word, type);

            transaction = session.beginTransaction();

            session.save(word);
            session.save(pronunciation);

            transaction.commit();
        }
        catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }
```

`save` allways within a `transaction`