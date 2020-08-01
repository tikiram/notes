# Spring

spring.data.rest.base-path=/api

@Controller marks this class as a Spring MVC controller.

```
http
  .httpBasic().and()
  .authorizeRequests()
    .antMatchers(HttpMethod.POST, "/employees").hasRole("ADMIN")
    .antMatchers(HttpMethod.PUT, "/employees/**").hasRole("ADMIN")
    .antMatchers(HttpMethod.PATCH, "/employees/**").hasRole("ADMIN");
```

# Buscador

https://stackoverflow.com/questions/47372429/how-to-search-by-an-object-in-springboot

## Explicacion search engines

https://medium.com/@wkrzywiec/full-text-search-with-hibernate-search-lucene-part-1-e245b889aa8e

# Seguridad Okta

https://developer.okta.com/blog/2018/07/19/simple-crud-react-and-spring-boot

--------

### Exponer ID En Data Rest

https://stackoverflow.com/questions/30912826/expose-all-ids-when-using-spring-data-rest/38938767

Spring + Data Rest

HATEOAS

## RestController with HATEOAS

https://stackoverflow.com/questions/52883417/spring-boot-rest-hateoas-hal

    https://docs.spring.io/spring-data/rest/docs/current/reference/html/#customizing-sdr.overriding-sdr-response-handlers

## Read opinions (i dont use spring-data-rest because of HATEOAS)

https://stackoverflow.com/questions/24421538/spring-data-rest-without-hateoas

---------

https://medium.com/@andreasreiser94/why-hateoas-is-useless-and-what-that-means-for-rest-a65194471bc8
https://pulsejet.github.io/blog/posts/hateoas/

https://stackoverflow.com/questions/26830431/web-service-differences-between-rest-and-rpc

https://stackoverflow.com/questions/19884295/soap-vs-rest-differences

------------

# Springo + OUATH2 + JWT

## JWT

https://www.tutorialspoint.com/spring_boot/spring_boot_oauth2_with_jwt.htm

## SIMPLE BUT WITH SOME EXPLANATION

https://dzone.com/articles/securing-rest-services-with-oauth2-in-springboot-1

## With DATABASE

https://www.baeldung.com/rest-api-spring-oauth2-angular

## SOME EXPLANATION

https://pattern-match.com/blog/2018/10/17/springboot2-with-oauth2-integration/

## TokenStore Types

https://stackoverflow.com/questions/39210683/how-inmemorytokenstore-works-with-spring-security-oauth2-and-is-this-the-safest