
package Paws::Lambda::ListLayersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lambda::Types qw/Lambda_LayersListItem/;
  has Layers => (is => 'ro', isa => ArrayRef[Lambda_LayersListItem]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Layers' => {
                             'class' => 'Paws::Lambda::LayersListItem',
                             'type' => 'ArrayRef[Lambda_LayersListItem]'
                           },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListLayersResponse

=head1 ATTRIBUTES


=head2 Layers => ArrayRef[Lambda_LayersListItem]

A list of function layers.


=head2 NextMarker => Str

A pagination token returned when the response doesn't contain all
layers.


=head2 _request_id => Str


=cut

