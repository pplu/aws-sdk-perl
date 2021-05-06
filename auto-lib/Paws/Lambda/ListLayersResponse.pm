
package Paws::Lambda::ListLayersResponse;
  use Moose;
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::LayersListItem]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListLayersResponse

=head1 ATTRIBUTES


=head2 Layers => ArrayRef[L<Paws::Lambda::LayersListItem>]

A list of function layers.


=head2 NextMarker => Str

A pagination token returned when the response doesn't contain all
layers.


=head2 _request_id => Str


=cut

