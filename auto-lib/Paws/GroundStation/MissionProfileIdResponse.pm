
package Paws::GroundStation::MissionProfileIdResponse;
  use Moose;
  has MissionProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'missionProfileId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::MissionProfileIdResponse

=head1 ATTRIBUTES


=head2 MissionProfileId => Str

ID of a mission profile.


=head2 _request_id => Str


=cut

