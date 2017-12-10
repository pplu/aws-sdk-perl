
package Paws::ServiceDiscovery::ListInstancesResponse;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::InstanceSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListInstancesResponse

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::ServiceDiscovery::InstanceSummary>]

Summary information about the instances that are associated with the
specified service.


=head2 NextToken => Str

If more than C<MaxResults> instances match the specified criteria, you
can submit another C<ListInstances> request to get the next group of
results. Specify the value of C<NextToken> from the previous response
in the next request.


=head2 _request_id => Str


=cut

1;