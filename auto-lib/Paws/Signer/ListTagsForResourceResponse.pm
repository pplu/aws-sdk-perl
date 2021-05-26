
package Paws::Signer::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Signer::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Signer::TagMap>

A list of tags associated with the signing profile.


=head2 _request_id => Str


=cut

