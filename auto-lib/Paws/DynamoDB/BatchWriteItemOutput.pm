
package Paws::DynamoDB::BatchWriteItemOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ConsumedCapacity]');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Paws::DynamoDB::ItemCollectionMetricsPerTable');
  has UnprocessedItems => (is => 'ro', isa => 'Paws::DynamoDB::BatchWriteItemRequestMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BatchWriteItemOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[L<Paws::DynamoDB::ConsumedCapacity>]

The capacity units consumed by the entire C<BatchWriteItem> operation.

Each element consists of:

=over

=item *

C<TableName> - The table that consumed the provisioned throughput.

=item *

C<CapacityUnits> - The total number of capacity units consumed.

=back



=head2 ItemCollectionMetrics => L<Paws::DynamoDB::ItemCollectionMetricsPerTable>

A list of tables that were processed by C<BatchWriteItem> and, for each
table, information about any item collections that were affected by
individual C<DeleteItem> or C<PutItem> operations.

Each entry consists of the following subelements:

=over

=item *

C<ItemCollectionKey> - The partition key value of the item collection.
This is the same as the partition key value of the item.

=item *

C<SizeEstimateRangeGB> - An estimate of item collection size, expressed
in GB. This is a two-element array containing a lower bound and an
upper bound for the estimate. The estimate includes the size of all the
items in the table, plus the size of all attributes projected into all
of the local secondary indexes on the table. Use this estimate to
measure whether a local secondary index is approaching its size limit.

The estimate is subject to change over time; therefore, do not rely on
the precision or accuracy of the estimate.

=back



=head2 UnprocessedItems => L<Paws::DynamoDB::BatchWriteItemRequestMap>

A map of tables and requests against those tables that were not
processed. The C<UnprocessedItems> value is in the same form as
C<RequestItems>, so you can provide this value directly to a subsequent
C<BatchGetItem> operation. For more information, see C<RequestItems> in
the Request Parameters section.

Each C<UnprocessedItems> entry consists of a table name and, for that
table, a list of operations to perform (C<DeleteRequest> or
C<PutRequest>).

=over

=item *

C<DeleteRequest> - Perform a C<DeleteItem> operation on the specified
item. The item to be deleted is identified by a C<Key> subelement:

=over

=item *

C<Key> - A map of primary key attribute values that uniquely identify
the item. Each entry in this map consists of an attribute name and an
attribute value.

=back

=item *

C<PutRequest> - Perform a C<PutItem> operation on the specified item.
The item to be put is identified by an C<Item> subelement:

=over

=item *

C<Item> - A map of attributes and their values. Each entry in this map
consists of an attribute name and an attribute value. Attribute values
must not be null; string and binary type attributes must have lengths
greater than zero; and set type attributes must not be empty. Requests
that contain empty values will be rejected with a
C<ValidationException> exception.

If you specify any attributes that are part of an index key, then the
data types for those attributes must match those of the schema in the
table's attribute definition.

=back

=back

If there are no unprocessed items remaining, the response contains an
empty C<UnprocessedItems> map.


=head2 _request_id => Str


=cut

1;