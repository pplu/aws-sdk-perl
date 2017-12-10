
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

If more than C<MaxResults> operations match the specified criteria, you
can submit another C<ListOperations> request to get the next group of
results. Specify the value of C<NextToken> from the previous response
in the next request.


=head2 Operations => ArrayRef[L<Paws::ServiceDiscovery::OperationSummary>]

Summary information about the operations that match the specified
criteria.


=head2 _request_id => Str


=cut

1;