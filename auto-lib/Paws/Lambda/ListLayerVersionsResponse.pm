
package Paws::Lambda::ListLayerVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lambda::Types qw/Lambda_LayerVersionsListItem/;
  has LayerVersions => (is => 'ro', isa => ArrayRef[Lambda_LayerVersionsListItem]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LayerVersions' => {
                                    'class' => 'Paws::Lambda::LayerVersionsListItem',
                                    'type' => 'ArrayRef[Lambda_LayerVersionsListItem]'
                                  },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
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

Paws::Lambda::ListLayerVersionsResponse

=head1 ATTRIBUTES


=head2 LayerVersions => ArrayRef[Lambda_LayerVersionsListItem]

A list of versions.


=head2 NextMarker => Str

A pagination token returned when the response doesn't contain all
versions.


=head2 _request_id => Str


=cut

