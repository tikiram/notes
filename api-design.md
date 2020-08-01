---
pinned: true
title: api-design
created: '2020-07-04T04:34:00.466Z'
modified: '2020-07-19T00:09:38.262Z'
---

# api-design

The mobile application is therefore called a *consumer*, and the backend is called a *provider*.

Partner API: Expose some of your APIs to customers or selected partners.

+ Web APIs turn software into reusable bricks that can be used over a network with the HTTP protocol.
+ APIs are interfaces for developers who build the applications consuming them.
+ API design matters for all APIs—​public or private.
+ Poorly designed APIs can be underused, misused, or not used at all, and even unsecure.
+ Designing a good API requires that you take the whole context of the application into consideration, not only the interface itself.

it only focuses on the user's needs

+ who are the users? E.g. customers, admins
+ whats
+ hows
+ inputs
+ outpus
+ goal - resume

+ To be easy for consumers to understand and use, an API must be designed from the consumer’s perspective.
+ Designing an API from the provider’s perspective by bluntly exposing inner workings (data code and business logic, software architecture, and human organization) inevitably leads to hard-to-understand and hard-to-use APIs.
+ A comprehensive and consumer-oriented API goals list is the strongest foundation for an API.
+ Identifying users, what they can do, how they do it, what they need to do it, and what they get in return is the key to building a comprehensive API goals list.

---

### Resource Paths

Path shoul reflect the resources's relationships

```
/catalog/{productId}
```

A path shoul reflect the resource's type.

```
products/{productId}
```

### Verbs

PATCH -> UPDATE
PUT -> REPLACE

These actions are made from the consumer's perspective, if you DELETE a resource, it does not mean that the resource will actually be deleted from the database, might simply update the order status to CANCELED.

### definitions

+ name
+ type
+ required
+ description

### Action Resource

*action resource*: is not a thing represented by a noun, but an action represented by a verb. It is simply a funciton, can be represented as a sub-resource of a resource.

```
/cart/checkout
/check-out-cart
```

> The cart resource might contain a status property. To check out the cart, we can update it with PATCH to set its value to CHECKING_OUT . This solution is closer to the REST model but less user-friendly than the action resource: the check out cart goal is hidden within an update of the cart resource. If we keep on brainstorming, I’m sure we can fnd a solution that totally fts the REST API model.

Well, an order is created that contains all the cart’s products. And after that the cart is emptied. That’s it! We are creating an order. Therefore, we can use a `POST` `/orders`

This solution totally conforms to the REST API model, but is it really user-friendly? The purpose of this REST representation might not be obvious to all users.

Options:

POST /cart/check-out
POST /check-out-cart
PATCH /cart
POST /ordersASDF

| asdf  | asdf            | asdf         | sdfasdf                              |
| ----- | --------------- | ------------ | ------------------------------------ |
| POST  | /cart/check-out | non-REST     | friendly                             |
| PATCH | /cart           | REST         | 40% friendly 60% api type compliance |
| POST  | /orders         | totally REST | api type compliance                  |

it will be up to you to choose

it is important to be able to make some reasonable trade-oofs to keep the api consumer-friendly and not diverge too much from the API model

---

Up to this point we've been considering REST APIs as APIs that map goals to paths and HTTP methods, but REST is far more than that.

+ client/server separation - there must be a clear separation of concerns when components like a mobile application and its API server work and communicate together.
+ statelessness: all information needed to execute a request is contained within the request itself. No client context is stored on the server in a session between requests.
* cacheability - a response to a request must indicate if it can be stored (so a client can reuse it instead of making the same call again); and for how long.
+ Layred system: When a client interfacts with a server, it is only aware of the server and not of the infrastructure that hides behind it. The client only sees one layer of the system.
+ code on demand: A server can transfer executable code to the client (eg: js). This constraint it optional.
+ uniform interface: All interactions must be guided by the concept of identifed resources that are manipulated through representations of resource states and standard methods. Interactions must also provide all metadata required to under-
  stand the representations and know what can be done with those resources. This is the most fundamental constraint of REST, and it is the origin of the Representational State Transfer name. Indeed, using a REST interface consists of transferring representations of a resource’s states.

Summary

+ A REST API represents its goals with actions (HTTP methods) on resources (paths).
+ You must use portable data such as object , array , string , number , date , or boolean types when designing data. 
+ A single API concept can have multiple data representations in different contexts.
+ If a parameter contains data that cannot be provided by consumers, you missed something.
+ Sometimes you will be frustrated or disappointed when designing APIs and having to strike a balance while facing design challenges—​this is totally normal.

---

## Chapter 4

OpenAPI Specification (OAS): Popular REST API description format. It is a programming language-agnostic REST API description format.

The OAS relies on the JSON Schema specifcation (http://json-schema.org) to describe
all data—​query parameters, body parameters, or response bodies, for example. JSON
Schema aims to describe data formats in a clear human-readable and machine-­readable
way. It can also be used to validate JSON documents against a JSON schema, a data
description made with JSON Schema. This format

OAS uses an adapted subset of JSON Schema. It does not use all JSON
Schema features, and some specifc OAS features have been added to this
subset.

```yaml
openapi: "3.0.0"
info:
  title: Shooping Cart
  version: "1.0"
paths:
  /products:
    get:
      summary: search for products
      description: |
        Search for products in catalog
        using a free query parameter
      parameters:
        - name: free-query
          description: |
            a product's name, reference, or partial description
          in: query
          required: false
          schema:
            type: string
      responses:
        "200":
          description: |
            Products matching free query parameter
```

```yaml
  type: object
  required:
    - reference
    - name
    - price
    - suplier
  properties:
    reference:
      type: string
      description: product's uniquer identifier
      example: ISBN-9781
    name:
      type: string
    price:
      type: number
    suplier:
      type: object
      description: Product's supplier
      required:
        - reference
        - name
      properties:
        reference:
          type: string
        name:
          type: string
```

```yaml
responses:
  "200":
    description: products matching free query
    content:
      application/json:
        schema:
          type: array
          description: Array of products
          items:
            type: object
            description: a product
            required:
              - reference
              - name
              - price
              - supplier
            properties:
              reference:
                type: string
```

`request body` is the same as `content` on responses

#### reusing schemas

```yaml
components:
  schemas:
    product:
      type: object
      properties:
paths:
  /products:
    get:
      parameters:
      responses:
        "200":
          content:
            application/json:
              schema:
                $ref: #/components/schemas/product
```

#### Path Parameters

```yaml
components:
  parameters:
    productId:
      ...
paths:
  /products:
  /products/{productId}:
    description: a product
    delete:
      summary: Delete a product
      parameters:
        - name: productId
          in: path
          required: true
          description: Product`s reference
          schema:
            type: string
    put:
      parameters:
        - $ref: #/components/parameters/productId
```

parameters can be defined to resource level, the following block is equivalent

```yaml:
    paths:
      /products/{productId}:
        parameters:
          - $ref: #/comp....
        put:
        delete:
```

+ An API description format is a simple and structured way to describe and share a
  programming interface.
+ An API description document is a machine-readable document that can be used
  in numerous ways, including to generate API reference documentation.
+ You use an API description format only when designing the API’s programmable
  representation and data, and not before.
+ Always take advantage of an API description format’s documentation features.
  Explore the API description format’s documentation in depth so you can use it
  effciently and, especially, to defne reusable components where possible.

## Usable API design

"Usability is what distinguishes awesome APIs from mediocre or passable ones."

it should be user/human-friendly

+ provide ready-to-use data: Variables computadas son bastantes utiles (edad, restantes, etc)

### Chapter 5

Error feedback

* malformed
+ function
* server

400 - Bad request
403 - Forbidden
409 - Conflict

```json
{
  "message": "amount is mandatory"
}
```

A human consumre will be able to interpret this message easily, but what about a machine?
Is better to provide a way to programmatically identify the property causing the error.

```json
{
  "source": "amount",
  "type": "AMOUNT_OVER_SAFE",
  "message": "Amount exceeds safe to spend"
}
```

This way would enable both humans and programs consuming the API to be able to accurately interpret any errors that arise.

#### Complex Error Handling

```json
{
  "source": "firstname",
  "path": "$.owners[0].firtstname"
  "type": "MISSING_MANDATORY_PROPERTY",
  "message": "Firstname is mandatory",
}
```

This uses a JSON path `https://goessner.net/articles/JsonPath`

To avoid too many requests/errors cycles, and the warth of consumers, it's best to return error feedback that is as exhaustive as posible, as shown in the next listing.

```json
  {
    "message": "invalid request",
    "error": [
      {
        "source": ...,
        "type": ...,
        "message": ...,
      },
      {
        "source": ...,
        "type": ...,
        "message": ...,
      }
    ]
  }
```

On different types of error (400 and 500) two responses should be generated (this may also depend on the bussiness and the consumer's perspective)

#### Responses

+ 200 - ok (muy vago)
+ 202 - Accepted (the payment has been accepted but will be executed later)
+ 201 - Created (they payment has been executed immediately )

This responses should also returns all data (**and caculated data**) that can be usefull to the consumer.

#### Goal Chain

+ TR: Give all necesary data to let the client run some validations (before sending te request), this ways the client will save time

+ Analyzing possible errors to determine added value data that could prevent them

+ Enhancing the success feedback of existing goals to provide such data

+ Creating new goals to provide such data

+ TR: We can simplify API calls, we can Join/merge apis together if they depend on each other and the have few data.

#### Sumary

+ Any representation must be easily understandable by people and programs.
+ Any representation must be as informative as possible.
+ Error feedback must provide enough elements to understand and maybe fx the problem.
+ Success feedback must describe what has been done.
+ Goal fows can be optimized by adding data or goals to prevent errors.
+ Goal fows can be simplifed by aggregating goals, but only if that makes sense from a functional perspective.

## Chapter 6 - Consistency

Use user's previous xperience to design an API

+ Level 1 —Consistency within an API
+ Level 2 —Consistency across an organization/company/team’s APIs
+ Level 3 —Consistency with the domain(s) of an API
+ Level 4 —Consistency with the rest of the world (for examplen PLAY and PAUSE symbols on devices)

> REST constraints: Uniform interface 
> The REST architectural style states that “... all interactions must be guided by the concept of identified resources which are manipulated through representations of resource states and standard methods.” The standard method part is indeed a powerful concept that helps to ensure consistency. Basically, the whole HTTP protocol (especially HTTP methods, but also HTTP status codes) provide a consistent framework for REST APIs, making them totally predictable.

**You must formally defne your design with rules in a document called the “API Design Guidelines” or the “API Design Style Guide.”**

### Providing and accepting different formats

To get the list as a CSV document, for example, consumers could send a GET request that specifes format=CSV like so:

```
GET /accounts/{accountId}/transactions?format=CSV
```

That’s a possibility, but because the Banking API is a REST API, we could also take advantage of the HTTP protocol and use content negotiation. 

Header:

```
accept: text/csv
accept: application/json

415 - Unsupported Media
```

### Internationalizing and localizing

en-US
fr-FR

```
Accept-Language: en-US
Content-Language: en-US

406 - not acceptable
```

### filtering, paginating and sorting

YOu can use a `page` query parameter or you can use a `range` header property

```
category=restaurant&sort=-amount,+date&page=3
```

### Discoverable

Like books, APIs can be designed in order to be discoverable. This is done by providing additional data in various ways, but discoverability can also be improved by taking advantage of the protocol used. REST APIs have the discoverable feature in their genes
because they use URLs and the HTTP protocol.

#### Providing Metadata

Thanks to the additional data, the transactions list is now discoverable. In computer science such data is called metadata; it’s data about data. Metadata can be used to tell consumers where they are and what they can do.

+ where am I
+ what can I do

`pagination` and `actions`

```json
{
  pagination: {
    page: 1,
    totalPages: 9
  },
  items: [
    {
      id: 1234,
      date: "asdf",
      actions: ["cancel"]
    }
  ]
}
```

The API can be used without this extra information, but metadata greatly facilitates its use. By adding metadata, we are
basically applying what we learned; providing ready-to-use data.

#### creating hypermedia APIs

```json
{
  pagination: {
    page: 1,
    totalPages: 9,
    next: "/accounts/1234/transattions?page=2"
    last: "/accounts/1234/transattions?page=9"
  },
  items: [
    {
      id: 1234,
      date: "asdf",
      actions: ["cancel"]
      href: "/accounts/123456/transactions"
    }
  ]
}
```

REST APIs provide links just like web pages. This facilitates API discovery and, as
you will see later in this book, API updating. There is no standard way to provide this
hypermedia metadata, but there are common practices, mostly based on how links are
represented in HTML pages and the HTTP protocol.

Hypermedia metadata usually uses names such as href , links , or _links . Although
there is no standard, several hypermedia formats have been defned. The best-known
ones are HAL, Collection+JSON, JSON API, JSON-LD, Hydra, and Siren. These for-
mats come with differing constraints regarding the data structure.

HAL (http://stateless.co/hal_specifcation.html) is relatively simple. A basic HAL
document has a links property containing the available links. Each link is an object
identifed by its relationship (or _rel ) with the current resource. The self relationship
is used for the resource’s link. The link object contains at least an href property with
the full URL or relative URL. For a bank account resource, the link to its transactions
would be located there as transactions as the following listing shows.

> REST constraints: Uniform interface
> The REST architectural style states that all interactions must be guided by the concept of identified resources that are manipulated through representations of resource states and standard methods and provides all metadata required to understand the represen-
> tations and know what can be done with those resources. a REST APIs are hypermedia APIs that provide all the metadata needed to help consumers navigate through them like a website to facilitate their discovery. Metadata can be used to describe not only link rela-
> tionships between resources but also among available operations. This part of the REST architectural style uniform interface constraint is called hypermedia as the engine of the application state (often worded as the unpronounceable HATEOAS).

### Taking Advantage of the HTTP protocol

```
OPTION /transfers/00001

200 ok
Allow: GET, DELETE
```

Like metadata that can provide information about the data (section 6.3.1), such metagoals can provide information about API goals.

OPTIONS method can return more details (more metadata)

Note that such use of the HTTP protocol by REST APIs cannot be widespread. Like
choosing a standard, you should check if such features are really useful to consumers.
If so, you might have to explain them in detail in your documentation for people who
are not HTTP protocol experts.

### Summary

+ To create APIs whose operations can be guessed, consistently defne conventions and follow common practices and standards.
+ Being consistent in your design not only makes your API easier to use, but also makes its design simpler.
+ Always check if your API needs to provide different representation and/or localization and internationalization features.
+ For each goal dealing with lists, consider whether paging, fltering, and sorting features will facilitate its use.
+ In order to guide consumers, provide as much as metadata as possible (like hypermedia links, for example).
+ Always check the underlying protocol and use its available features to make your API predictable, while taking care not to confuse users with complex or totally unused features.

## Chapter 7

### Data Organization

+ agrupe data if they are closely related
+ when can sort properties (same level) by importantace for they own group
+ same sorting with error arrays

```
{
  typeName,
  type,

  safeToSpend,
  balance,

  overDraftProtection: {
    active,
    limit,
  }

  age,
}
```

This organization will also be visible in the documentation or code generated from the
specifcation of your API.

Si una propiedad es obligatoria solo si viene definida otra propiedad en OpenAPI, se puede crear una agrupacion opcional, el cual contenga las dos propiedades como obligatorias.

### Organize Goals

You can tag each endpoint, this way endpoints will be grouped

+ dont organize based on the URL representation

+ organize based on the functional point of view

+ `tag` at root level defines the display order of groups

```yaml
openapi: "3.0.0"
...
tags:
    - name: Account
      description: asdfasdf
paths:
    /beneficiaries
        post:
            tags:
                - transfer
```



### Data Granularity

+ data granularity has two diimensions:
  
  + number of properties
  
  + depth



| context | number of properties  | maximum depth                         |
| ------- | --------------------- | ------------------------------------- |
| input   | Least possible        | Shallow (recommended: 3)              |
| output  | Functionally relevant | Functionally relevant (recommended 3) |



### summary

+ Organize data properties by sorting them, naming them using patterns, or grouping them in data structures.

+ Categorize feedback and sort it by its importance.

+ Group goals by focusing on functionality and not representations; you can use API description format features or naming patterns (OpenAPI tags and URL prefxes for REST APIs).

+ Keep the number of properties and depth levels as low as possible in data structures.

+ Avoid creating does-it-all goals.

+ Split data structures, goals, and even APIs into smaller but functionally signifcant elements when possible.



## Chapter 3

### Security

+ an API must be secure by design

+ Books such as OAuth 2 in Action, written by Justin Richer and Antonio Sanso,
  or API Security in Action, written by Neil Madden, both published by Manning (https://www.manning.com/books/oauth-2-in-action and https://www.manning.com/books/api-security-in-action, respectively)


### api-design-security

+ secure APIs only allow known consumers
+ Client ID has some scopes related
+ Relation between ClienteId + userId (end user) + granted scopes -> access token

Note that any communication between consumer and provider takes place over a secured channel, ensuring that nobody can intercept the exchanged data. When using the HTTP protocol, this is done using the Transport Layer Security (TLS) encryption (formerly known as the Secure Socket Layer, or SSL)--> HTTPS

+ requests should use the `userId` for data filtering

### Partitioning and API 

196

### Access Control

## Chapter 9

Booleans are not extensible

```
"executed": true
```

is better to use an self descriptive object
```
"status":  {
  "code" : "POSTPONED",
  "label" : "postponed",
}
```

Group similar data

```
creationDate: 1234,
executionDate: 1234234
```

```
events: [
  { date: 1234, status; "CREATION" },
  { date: 1234, status; "EXECUTION" }
  { date: 1234, status; "DELETED" }
]
```


### Summary

Each API evolution must be carefully designed in order to avoid breaking
¡
¡
¡
¡
changes, which can cause problems not only on the consumer’s but also the pro-
vider’s side.
API designers might have to live with previous poor design choices in order to
avoid introducing benevolent but breaking changes.
Depending on the context, breaking changes might be acceptable (for example,
private APIs with consumers under the organization’s control).
API versioning is a design + implementation + product management matter.
Designing APIs with extensibility in mind eases the design of evolutions, lessens
the risk of breaking changes, and favors API reusability.


## Chapter 10

+ caching
  - `Cache-Control: max-age=300` seconds
  - `ETag: "1234"` identifies the instance of the resource, could be the hash/date/version of the data 
+ conditional requests

+ activate compression
+ persistent connections: HTTP/2

### Design

+ cursor-based pagination
+ choose when to return all the details of and object in a list


### Representations

```
Accept: application/vnd.bankapi.extended+json
```

+ API designers have a role to play in network communication effciency.
+ The very frst step of network optimization is at the protocol level, not the design level.
+ API granularity and adaptability have impacts on network effciency.
+ Network effciency problems can be a sign of missing or inadequate goals in the API.
+ API design optimizations must not be done at the expense of usability and reusability; providing different API layers can help to avoid such booby traps.


## Chapter 10

+ webhook

