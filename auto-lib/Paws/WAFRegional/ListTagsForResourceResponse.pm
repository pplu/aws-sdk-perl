
package Paws::WAFRegional::ListTagsForResourceResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has TagInfoForResource => (is => 'ro', isa => 'Paws::WAFRegional::TagInfoForResource');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str




=head2 TagInfoForResource => L<Paws::WAFRegional::TagInfoForResource>




=head2 _request_id => Str


=cut

1;