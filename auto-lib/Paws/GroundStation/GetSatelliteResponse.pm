
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
               'DateCreated' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SatelliteId' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::GroundStation::TagsMap',
                           'type' => 'GroundStation_TagsMap'
                         },
               'SatelliteArn' => {
                                   'type' => 'Str'
                                 },
               'LastUpdated' => {
                                  'type' => 'Str'
                                },
               'NoradSatelliteID' => {
                                       'type' => 'Int'
                                     }
             },
  'NameInRequest' => {
                       'DateCreated' => 'dateCreated',
                       'SatelliteId' => 'satelliteId',
                       'Tags' => 'tags',
                       'SatelliteArn' => 'satelliteArn',
                       'LastUpdated' => 'lastUpdated',
                       'NoradSatelliteID' => 'noradSatelliteID'
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

