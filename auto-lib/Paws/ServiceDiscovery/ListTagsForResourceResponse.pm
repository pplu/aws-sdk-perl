
package Paws::ServiceDiscovery::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceDiscovery::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ServiceDiscovery::Tag>]

The tags that are assigned to the resource.


=head2 _request_id => Str


=cut

1;