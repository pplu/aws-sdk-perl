
package Paws::GroundStation::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a resource.


=head2 _request_id => Str


=cut

