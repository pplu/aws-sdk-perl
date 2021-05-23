
package Paws::EMRContainers::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::EMRContainers::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::EMRContainers::TagMap>

The tags assigned to resources.


=head2 _request_id => Str


=cut

