
package Paws::GroundStation::GetSatelliteResponse;
  use Moose;
  has GroundStations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'groundStations');
  has NoradSatelliteID => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'noradSatelliteID');
  has SatelliteArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteArn');
  has SatelliteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'satelliteId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::GetSatelliteResponse

=head1 ATTRIBUTES


=head2 GroundStations => ArrayRef[Str|Undef]

A list of ground stations to which the satellite is on-boarded.


=head2 NoradSatelliteID => Int

NORAD satellite ID number.


=head2 SatelliteArn => Str

ARN of a satellite.


=head2 SatelliteId => Str

UUID of a satellite.


=head2 _request_id => Str


=cut

