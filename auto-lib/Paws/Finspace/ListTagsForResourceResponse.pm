
package Paws::Finspace::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Finspace::TagMap>

A list of all tags for a resource.


=head2 _request_id => Str


=cut

