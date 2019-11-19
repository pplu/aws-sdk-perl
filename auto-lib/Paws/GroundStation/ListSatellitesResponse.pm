
package Paws::GroundStation::ListSatellitesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GroundStation::Types qw/GroundStation_SatelliteListItem/;
  has NextToken => (is => 'ro', isa => Str);
  has Satellites => (is => 'ro', isa => ArrayRef[GroundStation_SatelliteListItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Satellites' => {
                                 'type' => 'ArrayRef[GroundStation_SatelliteListItem]',
                                 'class' => 'Paws::GroundStation::SatelliteListItem'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Satellites' => 'satellites',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListSatellitesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Next token that can be supplied in the next call to get the next page
of satellites.


=head2 Satellites => ArrayRef[GroundStation_SatelliteListItem]

List of satellites.


=head2 _request_id => Str


=cut

