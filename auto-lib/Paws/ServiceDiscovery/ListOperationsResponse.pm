
package Paws::ServiceDiscovery::ListOperationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::OperationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListOperationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response contains C<NextToken>, submit another C<ListOperations>
request to get the next group of results. Specify the value of
C<NextToken> from the previous response in the next request.

AWS Cloud Map gets C<MaxResults> operations and then filters them based
on the specified criteria. It's possible that no operations in the
first C<MaxResults> operations matched the specified criteria but that
subsequent groups of C<MaxResults> operations do contain operations
that match the criteria.


=head2 Operations => ArrayRef[L<Paws::ServiceDiscovery::OperationSummary>]

Summary information about the operations that match the specified
criteria.


=head2 _request_id => Str


=cut

1;