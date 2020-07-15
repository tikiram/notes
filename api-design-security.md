---
pinned: true
title: api-design-security
created: '2020-07-12T03:27:30.187Z'
modified: '2020-07-12T19:32:37.448Z'
---

# api-design-security

+ secure APIs only allow known consumers
+ Client ID has some scopes related
+ Relation between ClienteId + userId (end user) + granted scopes -> access token

Note that any communication between consumer and provider takes place over a secured channel, ensuring that nobody can intercept the exchanged data. When using the HTTP protocol, this is done using the Transport Layer Security (TLS) encryption (formerly known as the Secure Socket Layer, or SSL)--> HTTPS

+ requests should use the `userId` for data filtering

## Partitioning and API 

196

## Access Control
