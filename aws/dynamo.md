
# DynamoDB

## Global Indexes

* If you need to access just a few attributes with the lowest possible latency, consider projecting only those attributes into a global secondary index. The smaller the index, the less that it costs to store it, and the less your write costs are.
* If your application frequently accesses some non-key attributes, you should consider projecting those attributes into a global secondary index. The additional storage costs for the global secondary index offset the cost of performing frequent table scans.
* If you need to access most of the non-key attributes on a frequent basis, you can project these attributes—or even the entire base table— into a global secondary index. This gives you maximum flexibility. However, your storage cost would increase, or even double.
* If your application needs to query a table infrequently, but must perform many writes or updates against the data in the table, consider projecting KEYS_ONLY. The global secondary index would be of minimal size, but would still be available when needed for query activity.

You can retrieve items from a global secondary index using the Query and Scan operations. The GetItem and BatchGetItem operations can't be used on a global secondary index.

When you create a secondary index, you need to specify the attributes that will be projected into the index. DynamoDB provides three different options for this:

- `KEYS_ONLY` – Each item in the index consists only of the table partition key and sort key values, plus the index key values. The KEYS_ONLY option results in the smallest possible secondary index.
- `INCLUDE` – In addition to the attributes described in KEYS_ONLY, the secondary index will include other non-key attributes that you specify.
- `ALL` – The secondary index includes all of the attributes from the source table. Because all of the table data is duplicated in the index, an ALL projection results in the largest possible secondary index.

##  Strongly consistent reads

Read operations such as GetItem, Query, and Scan provide an optional ConsistentRead parameter. If you set ConsistentRead to true, DynamoDB returns a response with the most up-to-date data, reflecting the updates from all prior write operations that were successful. Strongly consistent reads are only supported on tables and local secondary indexes. Strongly consistent reads from a global secondary index or a DynamoDB stream are not supported.

* global secondary index queries are eventually consistent