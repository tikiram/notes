# Firestore

Schemaless.

## Documents

Record than contains fields, is identified by a name. Limitted to 1 MB.

The names of documents are unique within a collection. You can provide your own keys, such as user IDs, or you can let Cloud Firestore create random IDs for you automatically.

Types:

+ boolean
+ number
+ string
+ geo point
+ binary blob
+ timestamp
+ arrays
+ nested objects (maps)



## Collections

Containers for documents.

## References

Lightweight object that just points to a location in your database.  You can create a reference whether or not data exists there, and creating a reference does not perform any network operations.

```
db.collection('users').document('alovelace')
db.document('users/alovelace')
```

## Subcollections

When you delete a document that has subcollections, those subcollections are
not deleted. For example, there may be a document located at `coll/doc/subcoll/subdoc`
even though the document `coll/doc` no longer exists. If you want to delete
documents in subcollections when deleting a parent document, you must do so manually,

