
package Paws::GroundStation::ListMissionProfilesResponse;
  use Moose;
  has MissionProfileList => (is => 'ro', isa => 'ArrayRef[Paws::GroundStation::MissionProfileListItem]', traits => ['NameInRequest'], request_name => 'missionProfileList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ListMissionProfilesResponse

=head1 ATTRIBUTES


=head2 MissionProfileList => ArrayRef[L<Paws::GroundStation::MissionProfileListItem>]

List of mission profiles


=head2 NextToken => Str

Next token returned in the response of a previous
C<ListMissionProfiles> call. Used to get the next page of results.


=head2 _request_id => Str


=cut

