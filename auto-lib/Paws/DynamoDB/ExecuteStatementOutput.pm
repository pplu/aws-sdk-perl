
package Paws::DynamoDB::ExecuteStatementOutput;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeMap]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ExecuteStatementOutput

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::DynamoDB::AttributeMap>]

If a read operation was used, this property will contain the result of
the reade operation; a map of attribute names and their values. For the
write operations this value will be empty.


=head2 NextToken => Str

If the response of a read request exceeds the response payload limit
DynamoDB will set this value in the response. If set, you can use that
this value in the subsequent request to get the remaining results.


=head2 _request_id => Str


=cut

1;