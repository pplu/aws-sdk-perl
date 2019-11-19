# Generated from json/callresult_class.tt

package Paws::DirectConnect::Locations;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DirectConnect::Types qw/DirectConnect_Location/;
  has Locations => (is => 'ro', isa => ArrayRef[DirectConnect_Location]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Locations' => {
                                'class' => 'Paws::DirectConnect::Location',
                                'type' => 'ArrayRef[DirectConnect_Location]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Locations' => 'locations'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Locations

=head1 ATTRIBUTES


=head2 Locations => ArrayRef[DirectConnect_Location]

The locations.


=head2 _request_id => Str


=cut

1;