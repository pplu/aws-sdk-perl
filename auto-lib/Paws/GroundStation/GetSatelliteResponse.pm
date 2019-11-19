
package Paws::GroundStation::GetSatelliteResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GroundStation::Types qw/GroundStation_TagsMap/;
  has DateCreated => (is => 'ro', isa => Str);
  has LastUpdated => (is => 'ro', isa => Str);
  has NoradSatelliteID => (is => 'ro', isa => Int);
  has SatelliteArn => (is => 'ro', isa => Str);
  has SatelliteId => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastUpdated' => {
                                  'type' => 'Str'
                                },
               'SatelliteId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'GroundStation_TagsMap',
                           'class' => 'Paws::GroundStation::TagsMap'
                         },
               'SatelliteArn' => {
                                   'type' => 'Str'
                                 },
               'NoradSatelliteID' => {
                                       'type' => 'Int'
                                     },
               'DateCreated' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SatelliteId' => 'satelliteId',
                       'LastUpdated' => 'lastUpdated',
                       'Tags' => 'tags',
                       'DateCreated' => 'dateCreated',
                       'NoradSatelliteID' => 'noradSatelliteID',
                       'SatelliteArn' => 'satelliteArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetSatelliteResponse

=head1 ATTRIBUTES


=head2 DateCreated => Str

When a satellite was created.


=head2 LastUpdated => Str

When a satellite was last updated.


=head2 NoradSatelliteID => Int

NORAD satellite ID number.


=head2 SatelliteArn => Str

ARN of a satellite.


=head2 SatelliteId => Str

UUID of a satellite.


=head2 Tags => GroundStation_TagsMap

Tags assigned to a satellite.


=head2 _request_id => Str


=cut

