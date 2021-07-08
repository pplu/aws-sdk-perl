
package Paws::CustomerProfiles::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

