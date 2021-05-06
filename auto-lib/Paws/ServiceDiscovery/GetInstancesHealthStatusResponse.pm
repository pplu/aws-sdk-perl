
package Paws::ServiceDiscovery::GetInstancesHealthStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::ServiceDiscovery::InstanceHealthStatusMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetInstancesHealthStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> instances match the specified criteria, you
can submit another C<GetInstancesHealthStatus> request to get the next
group of results. Specify the value of C<NextToken> from the previous
response in the next request.


=head2 Status => L<Paws::ServiceDiscovery::InstanceHealthStatusMap>

A complex type that contains the IDs and the health status of the
instances that you specified in the C<GetInstancesHealthStatus>
request.


=head2 _request_id => Str


=cut

1;