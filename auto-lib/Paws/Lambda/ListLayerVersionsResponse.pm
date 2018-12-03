
package Paws::Lambda::ListLayerVersionsResponse;
  use Moose;
  has LayerVersions => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::LayerVersionsListItem]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListLayerVersionsResponse

=head1 ATTRIBUTES


=head2 LayerVersions => ArrayRef[L<Paws::Lambda::LayerVersionsListItem>]

A list of versions.


=head2 NextMarker => Str

A pagination token returned when the response doesn't contain all
versions.


=head2 _request_id => Str


=cut

