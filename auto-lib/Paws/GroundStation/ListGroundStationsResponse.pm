
package Paws::GroundStation::ListGroundStationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GroundStation::Types qw/GroundStation_GroundStationData/;
  has GroundStationList => (is => 'ro', isa => ArrayRef[GroundStation_GroundStationData]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'GroundStationList' => {
                                        'class' => 'Paws::GroundStation::GroundStationData',
                                        'type' => 'ArrayRef[GroundStation_GroundStationData]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'GroundStationList' => 'groundStationList'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListGroundStationsResponse

=head1 ATTRIBUTES


=head2 GroundStationList => ArrayRef[GroundStation_GroundStationData]

List of ground stations.


=head2 NextToken => Str

Next token that can be supplied in the next call to get the next page
of ground stations.


=head2 _request_id => Str


=cut

