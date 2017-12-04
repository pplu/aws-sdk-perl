
package Paws::DynamoDB::QueryOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has Count => (is => 'ro', isa => 'Int');
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeMap]');
  has LastEvaluatedKey => (is => 'ro', isa => 'Paws::DynamoDB::Key');
  has ScannedCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::QueryOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => L<Paws::DynamoDB::ConsumedCapacity>

The capacity units consumed by the C<Query> operation. The data
returned includes the total provisioned throughput consumed, along with
statistics for the table and any indexes involved in the operation.
C<ConsumedCapacity> is only returned if the C<ReturnConsumedCapacity>
parameter was specified For more information, see Provisioned
Throughput
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 Count => Int

The number of items in the response.

If you used a C<QueryFilter> in the request, then C<Count> is the
number of items returned after the filter was applied, and
C<ScannedCount> is the number of matching items before the filter was
applied.

If you did not use a filter in the request, then C<Count> and
C<ScannedCount> are the same.


=head2 Items => ArrayRef[L<Paws::DynamoDB::AttributeMap>]

An array of item attributes that match the query criteria. Each element
in this array consists of an attribute name and the value for that
attribute.


=head2 LastEvaluatedKey => L<Paws::DynamoDB::Key>

The primary key of the item where the operation stopped, inclusive of
the previous result set. Use this value to start a new operation,
excluding this value in the new request.

If C<LastEvaluatedKey> is empty, then the "last page" of results has
been processed and there is no more data to be retrieved.

If C<LastEvaluatedKey> is not empty, it does not necessarily mean that
there is more data in the result set. The only way to know when you
have reached the end of the result set is when C<LastEvaluatedKey> is
empty.


=head2 ScannedCount => Int

The number of items evaluated, before any C<QueryFilter> is applied. A
high C<ScannedCount> value with few, or no, C<Count> results indicates
an inefficient C<Query> operation. For more information, see Count and
ScannedCount
(http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count)
in the I<Amazon DynamoDB Developer Guide>.

If you did not use a filter in the request, then C<ScannedCount> is the
same as C<Count>.


=head2 _request_id => Str


=cut

1;