
package Paws::ServiceDiscovery::DiscoverInstancesResponse;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::HttpInstanceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DiscoverInstancesResponse

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::ServiceDiscovery::HttpInstanceSummary>]

A complex type that contains one C<HttpInstanceSummary> for each
registered instance.


=head2 _request_id => Str


=cut

1;