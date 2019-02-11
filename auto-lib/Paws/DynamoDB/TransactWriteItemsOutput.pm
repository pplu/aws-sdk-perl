
package Paws::DynamoDB::TransactWriteItemsOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ConsumedCapacity]');
  has ItemCollectionMetrics => (is => 'ro', isa => 'Paws::DynamoDB::ItemCollectionMetricsPerTable');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TransactWriteItemsOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => ArrayRef[L<Paws::DynamoDB::ConsumedCapacity>]

The capacity units consumed by the entire C<TransactWriteItems>
operation. The values of the list are ordered according to the ordering
of the C<TransactItems> request parameter.


=head2 ItemCollectionMetrics => L<Paws::DynamoDB::ItemCollectionMetricsPerTable>

A list of tables that were processed by C<TransactWriteItems> and, for
each table, information about any item collections that were affected
by individual C<UpdateItem>, C<PutItem> or C<DeleteItem> operations.


=head2 _request_id => Str


=cut

1;