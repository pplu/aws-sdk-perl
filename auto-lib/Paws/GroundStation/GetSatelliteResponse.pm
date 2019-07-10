
package Paws::GroundStation::GetSatelliteResponse;
  use Moose;
  has DateCreated => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dateCreated');
  has LastUpdated => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdated');
  has NoradSatelliteID => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'noradSatelliteID');
  has SatelliteArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteArn');
  has SatelliteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteId');
  has Tags => (is => 'ro', isa => 'Paws::GroundStation::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 Tags => L<Paws::GroundStation::TagsMap>

Tags assigned to a satellite.


=head2 _request_id => Str


=cut

